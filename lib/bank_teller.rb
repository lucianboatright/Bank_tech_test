class BankTeller

  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def add(credit)
    @balance += credit 
  end

  def remove(credit)
    @balance -= credit
    
  end

  # def show
  #   puts @account.join("#{\n}")
  # end

end



#[date || credit || debit || balance]
