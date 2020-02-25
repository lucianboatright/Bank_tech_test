#holds bank account arrays 
require "bank_accounts"


class BankStatment

  attr_reader :statment

  def initialize()
    @statment = [["#{Time.now}"],["||"],[],["||"],[],["||"],[]]
  end

  def add_statment(credit)
    @statment[2] = BankAccount.add_balance(credit) + @statment[6] = BankAccount.balance
  end

  def remove_statment(credit)
    @statment[4] = BankAccount.remove_balance(credit) + @statment[6] = BankAccount.balance
  end

end
