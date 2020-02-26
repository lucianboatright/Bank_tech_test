
class BankTransaction

  attr_reader :type, :amount, :balance, :date

  def initialize(type, date, amount, balance)
    @type = type
    @date = date
    @amount = amount
    @balance = balance
  end
end
