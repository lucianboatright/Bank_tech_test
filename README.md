# Bank Account Tech Test

Simple ruby program to store Users transactions in a Bank account. Store when the user transacted, the amount and weather it was a withdraw or deposit along with a running balance. 


## Setup 
- Clone repository in to a directory 
- Run bundle install to download required gems
- Open the program in an IRB or REPL to run and follow the 'How to run segment'

## How To Run
User can run the code through an IRB or REPL.
Open a Terminal on your computer
Go to the parent directory of the program
Open an IRB
- require 'bank_accounts.rb'
Once the file is open in the IRB assign a new version of the bank account to a variable
- transaction = BankAccount.new()
The user can then run the commands below to either deposit money, withdraw money or show a list of statements
- transaction.withdraw(amount)
- transaction.deposit(amount)
- transaction.print_statement()


## Gems and packages
- Simple-cove for test coverage 
- Rubocop for code quality


## Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00



## User stories 

As a user
I would like to create a transaction 
To hold attributes of date, type, amount and balance 

As a user
I would like to save this transaction 
By storing it in the BankAccount

As a user 
I would like to store transactions when I
Add money to my Bank account balance

As a user 
I would like to store transactions when I
Add money to my Bank account balance
Withdraw money from my Bank account balance

As a User 
I would like to print all the transactions
In a formatted statement in set spots 








