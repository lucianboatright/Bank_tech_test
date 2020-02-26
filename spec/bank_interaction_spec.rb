require "bank_interactions"

describe BankTransaction do
  describe '#debit' do
    it 'return hash with balance and credited amount' do
      transaction = BankTransaction.new("credit","date",100,1000)
      expect(transaction.type).to eq("credit")
      expect(transaction.date).to eq("date")
      expect(transaction.amount).to eq(100)
      expect(transaction.balance).to eq(1000)
    end
  end
end
