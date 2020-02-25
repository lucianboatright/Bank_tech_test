
class BankTransaction

  attr_reader :type, :amount, :balance, :date

  def initialize(type, date, amount , balance)
    @type = type
    @date = date
    @amount = amount
    @balance = balance
  end
end

nic = BankTransaction.new("credit", "date", 100, 1000)

puts nic.inspect



# class BankInteractons

#   def self.add_balace(money, balance)
#     BankStatment.debit_statment(money, balance)
#   end

#   def self.remove_balance(money, balance)
#     BankStatment.credit_statment(money, balance)
#   end

#   def self.show
#     puts @statments.join("\n")
#   end

# end