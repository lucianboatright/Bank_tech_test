require "bank_accounts"


describe BankAccount do
  before(:each) do
    @account = BankAccount.new
  end

  describe '#account_balance' do
    it 'has an initial balance' do
      expect(@account.account_balance).to eq(0)
    end
  end
  describe '#transaction' do
    it 'has no transactions on initialization' do
      expect(@account.transactions).to eq([])
    end
  end 
end










# require 'bank_acount'

# describe BankAccount do
#   describe '#account' do
#     it 'holds the arrays sent from teller' do
#       expect(BankAccount)
#     end
#   end
# end