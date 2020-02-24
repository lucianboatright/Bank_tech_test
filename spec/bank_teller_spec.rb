


require 'bank_teller'

describe BankTeller do
  describe '#add' do
    it 'return array with balance and credited amount' do
      first = BankTeller.new
      expect(first.add(100)).to eq(["date || 100 || || 100"])
    end
  end

  describe '#remove' do
    it 'return array with balance and credited amount' do
      first = BankTeller.new
      expect(first.remove(50)).to eq(["date || || 50 || 50"])
    end
  end
end



# describe BankTeller do
#   describe '#account' do
#     it 'holds the arrays sent from teller' do
#       BankAccount 
#       expect()
#     end
#   end
# end