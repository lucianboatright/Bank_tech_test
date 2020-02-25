# hold bank account actions like add/remove/show
# require 'bank_statment'


class BankAccount

  attr_reader :balance, :account

  def initialize(balance = 0)
    @balance = balance
    @account = [['date || credit || debit || balance']]
  end

  def credit_balance(credit)
    @balance += credit
    statment = BankStatment.new
    @account << statment.credit_statment(credit)
  end

  def debit_balance(credit)
    @balance -= credit
    statment = BankStatment.new
    @account << statment.debit_statment(credit)
  end

  def show
    puts @account.join("\n")
    
  end

end



class BankStatment

  attr_reader :statment

  def initialize()
    @statment = [["#{Time.now}"],["||"],[],["||"],[],["||"],[]]
  end

  def credit_statment(credit)
    account = BankAccount.new
    @statment[2] = account.credit_balance(credit) && @statment[6] = account.balance
  end

  def debit_statment(credit)
    @statment[4] = BankAccount.debit_balance(credit) && @statment[6] = BankAccount.balance
  end

end


    # new_statment = ["date || || #{credit} || #{balance}"]

Nic = BankAccount.new
Nic.credit_balance(1000000)
Nic.debit_balance(500000)
Nic.debit_balance(25000)
Nic.show()



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
