# hold bank account actions like add/remove/show



class BankTeller

  attr_reader :balance

  def initialize(account = [], balance = 0)
    @balance = balance
  end

  def add(credit)
    @balance += credit
    new = ["date || #{credit} || || #{balance}"]
  end

  def remove(credit)
    @balance += credit
    new = ["date || || #{credit} || #{balance}"]
  end


end




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
