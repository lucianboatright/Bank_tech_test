class BankTeller

  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def add(credit)
    p @balance
    @balance += credit 
    # @account.push(["#{Time.new}" + "||" + "#{credit}" + "||"+"||" + "#{balance}"])
  end

  # def show
  #   puts @account.join("#{\n}")
  # end

end



#[date || credit || debit || balance]
