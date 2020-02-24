require 'bank_teller'

describe BankTeller do
  describe '#add' do
    it 'adds amount of credit to balance' do
      first = BankTeller.new()
      first.add(100)
      expect(first.balance).to eq(100)
    end
  end 

  describe '#credit' do
    it 'takes out amount from balance' do
      first = BankTeller.new()
      first.add(100)
      first.remove(50)
      expect(fist.balance).to eq(50)
    end
  end



  # describe '#show' do
  #   it 'method shows bank account '
  #     expect(BankTeller.show(bank_account[0])).to eq("date || credit || debit || balance")
  # end
end