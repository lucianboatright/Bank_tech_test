#holds bank account arrays 
# require "./bank_accounts"


class BankStatment

  def self.debit_statment(money, balance)
    ["date || #{money} || || #{balance}"]  
  end

  def self.credit_statment(money, balance)
    ["date || || #{money} || #{balance}"]  
  end

end