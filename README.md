## Bank Account Tech Test

Simple ruby program to arrange people bank accounts 



# User stories 
<!-- As a User I can 
Depostie money into an account 
Test 
- User can be added to the bank and is held in -->

As a User I would like to 
Add money to their account
Test
- Amount is stored in an array as both debite and total balance.


As a User I would like to 
Add withdraw to their account
Test
- Amount withdrawn is taken from the array ass credit balance.


As a User I would like to 
Add money to their account with a date 
Test
- Amount is stored in an array with time stamp.


As a User I would like to 
Withdraw money to their account with a date stamp of time
Test
- Credit is left empty and depsite hold amount input, balance is updated
- when money is added a time stamp is created 


As a User I would 
Like to See the bank balance on request
Each withdraw or deposit will be shown on a new line
Test
- Each ##part of the array is printed with a new line between.


As a User 
When viewing my account 
I will see || between each piece of information.



The account should
Hold an amount of money to a given user 

The account should 
hold the date of deposite or withdraw 


# How To Run
Open a Terminal on your computer
Go to the parent directory of the program
Open an IRB
require 'filename.rb'
Once the file is open in the IRB create 
User can run the code through an IRB or REPL rarther than command line interfaces 


# Setup 
- Clone repository in to a directory 
- Run bundle install to download required gems
- Open the program in an IRB or REPL to run


# Gems and packages
- Simple-cove for test coverage 
- Rubocop for code quality


# Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00





