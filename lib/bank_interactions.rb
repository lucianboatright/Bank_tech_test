

class BankInteractons

  def self.add_balace(money)
    BankStatment.debit_statment(money, @balance)
  end

  def self.remove_balance(money)
    BankStatment.credit_statment(money, @balance)
  end

  def self.show
    puts @statments.join("\n")
  end

end