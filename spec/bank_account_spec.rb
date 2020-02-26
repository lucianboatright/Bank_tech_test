require "bank_accounts"
require "timecop"


describe BankAccount do
  before(:each) do
    @account = BankAccount.new
  end

  describe '#account_balance' do
    it 'has an initial balance' do
      expect(@account.balance).to eq(0)
    end
  end
  describe '#transaction' do
    it 'has no transactions on initialization' do
      expect(@account.transactions).to eq([])
    end
  end 
  describe '#deposit' do
    it 'adds money to balance' do
      @account.deposit(10)
      expect(@account.balance).to eq(10)
    end
    it 'can make multiple deposits' do
      @account.deposit(10)
      @account.deposit(30)
      @account.deposit(10)
      expect(@account.balance).to eq(50)
    end
    it 'deposit transaction recorded' do
      @account.balance += 1000
      now = Time.now
      Timecop.freeze(now) do
        @account.deposit(10)
      end
      expect(@account.transactions.length).to eq(1)
      expect(@account.transactions[0].type).to eq("debit")
      expect(@account.transactions[0].amount).to eq(10)
      expect(@account.transactions[0].balance).to eq(1010)
      expect(@account.transactions[0].date).to eq(now)
    end
    it 'test multiple transactions recorded' do
      @account.balance += 1000
      @account.deposit(10)
      @account.deposit(20)
      @account.deposit(30)
      expect(@account.transactions.length).to eq(3)
      expect(@account.transactions[2].amount).to eq(30)
      expect(@account.transactions[2].balance).to eq(1060)
    end      
  end
  describe '#withdraw' do
    it 'removes money from balance' do
      @account.balance += 1000
      now = Time.now
      Timecop.freeze(now) do
        @account.withdraw(10)
      end
      expect(@account.transactions.length).to eq(1)
      expect(@account.transactions[0].type).to eq("credit")
      expect(@account.transactions[0].amount).to eq(10)
      expect(@account.transactions[0].balance).to eq(990)
      expect(@account.transactions[0].date).to eq(now)
    end
  end
  describe '#print_statement' do
    it 'displays an empty table when no transaction have happened' do
      expect do
        @account.print_statement()
      end.to output("date || credit || debit || balance\n").to_stdout
    end
    it 'displays debited transactions' do 
      @account.balance += 1000
      now = Time.now
      Timecop.freeze(now) do
        @account.deposit(10)
      end 
      expect do
        @account.print_statement()
      end.to output("date || credit || debit || balance\n#{now} || || 10 || 1010\n").to_stdout
    end
    it 'displays credited transactions' do 
      @account.balance += 1000
      now = Time.now
      Timecop.freeze(now) do
        @account.withdraw(10)
      end 
      expect do
        @account.print_statement()
      end.to output("date || credit || debit || balance\n#{now} || 10 || || 990\n").to_stdout
    end
    it 'displays multiple transactions both deposites and withdraws' do 
      @account.balance += 1000
      now = Time.now
      Timecop.freeze(now) do
        @account.withdraw(40)
        @account.deposit(10)
        @account.withdraw(30)
      end 
      expect do
        @account.print_statement()
      end.to output("date || credit || debit || balance\n#{now} || 40 || || 960\n#{now} || || 10 || 970\n#{now} || 30 || || 940\n").to_stdout
    end
  end

end
