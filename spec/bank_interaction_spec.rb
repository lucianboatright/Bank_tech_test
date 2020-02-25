require "bank_interactions"

describe BankInteraction do
  describe '#debit' do
    it 'return hash with balance and credited amount' do
      # first = BankInteraction.debit(date: "date", debit: 100, balance: @balance)
      expect(BankInteraction.new("credit","date",100).inspect).to eq('credit',Time.now.strftime("%d/%m/%Y"),100)
    end
  end
end


# require 'bank_teller'

# describe BankAccount do
#   describe '#add' do
#     it 'return array with balance and credited amount' do
#       first = BankAccount.new
#       expect(first.add(100)).to eq(["date || 100 || || 100"])
#     end
#   end

#   describe '#remove' do
#     it 'return array with balance and credited amount' do
#       first = BankAccount.new
#       first.add(100)
#       expect(first.remove(50)).to eq(["date || || 50 || 50"])
#     end
#   end
#   describe '#remove' do
#     it 'return array with balance and credited amount' do
#       first = BankAccount.new
#       first.add(100)
#       first.add(100)
#       expect(first).to eq([["date || || 100 || 100"],["date || || 100 || 200"]])
#     end
#   end
# end



# # describe BankTeller do
# #   describe '#account' do
# #     it 'holds the arrays sent from teller' do
# #       BankAccount 
# #       expect()
# #     end
# #   end
# # end