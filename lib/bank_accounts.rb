require_relative "bank_interactions"



class BankAccount

  attr_reader :transactions
  attr_accessor :balance

  def initialize()
    @balance = 0
    @transactions = []       
  end


  def deposit(amount)
    @balance += amount
    @transactions << BankTransaction.new("debit", Time.now, amount, @balance)
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << BankTransaction.new("credit", Time.now, amount, @balance)
  end

  def print_statement()
    puts "date || credit || debit || balance"
    @transactions.each do |transaction|
      if transaction.type == "debit"
        puts "#{transaction.date} || || #{transaction.amount} || #{transaction.balance}"
      else
        puts "#{transaction.date} || #{transaction.amount} || || #{transaction.balance}"
      end
    end
  end

end

