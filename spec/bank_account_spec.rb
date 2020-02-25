require "bank_accounts"


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
      @account.deposit(10)
      expect(@account.transactions.length).to eq(1)
    end
  end 


  # describe '#withdraw' do
  #   it 'removes money from balance' do
  #     @account.withdraw(10)
  #     expect(@account.balance).to eq(-10)
  #   end

end










# require 'bank_acount'

# describe BankAccount do
#   describe '#account' do
#     it 'holds the arrays sent from teller' do
#       expect(BankAccount)
#     end
#   end
# end