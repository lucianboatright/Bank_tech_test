
class BankAccount

  attr_reader :balance, :transactions

  def initialize()
    @balance = 0
    @transactions = []
  end


  def deposit(amount)
    @balance += amount
  end

end





# hold bank account actions like add/remove/show
# require "./bank_statment"

# require "./bank_interactions"


# class BankAccount

#   attr_reader :balance

#   def initialize(balance = 0)
#     @balance = balance
#     @statments = [['date || credit || debit || balance']]
#   end

#   def debit(money)
#     @statments << BankStatment.new(money, @balance)
#   end

#   def credit(money)
#     @balance -= money
#     @statments
#   end

#   def show

#   end

# end

# Nic = BankAccount.new
# Nic.add_balace(1000000)
# Nic.remove_balance(500000)
# Nic.remove_balance(25000)
# Nic.show()



# class BankTeller

#   attr_reader :account, :balance

#   def initialize(balance = 0)
#     @account = account
#     @balance = balance

#   end

#   def add(debit)
#     p @balance
#     p @account
#     @balance += debit
#     @account.push(["date || #{debit} || || #{balance}"])
#   end

#   def remove(credit)

#   end

#   # def show
#   #   puts "date || #{}"
#   # end

# end





# class BankTeller

#   attr_reader :balance

#   def initialize(balance = 0)
#     @balance = balance
#   end

#   def add(debit)
#     @balance += debit 
#   end

#   def remove(credit)
#     @balance -= credit
#   end

#   # def show
#   #   puts "date || #{}"
#   # end

# end



#[date || credit || debit || balance]
