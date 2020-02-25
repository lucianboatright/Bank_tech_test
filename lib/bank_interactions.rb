
class BankInteraction

  attr_reader :type, :amount, :balance

  def initialize(type, date = @date, amount , balance)
    @type = type
    @date = "date"
    @amount = amount
    @balance = 
  end
end

nic = BankInteraction.new("credit", 100)

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