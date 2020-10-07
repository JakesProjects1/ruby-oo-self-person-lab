# your code goes here
require 'pry'
class Person 

def initialize(name)
   @name = name
   @bank_account = 25
end

def name
  @name
end

def bank_account
  @bank_account
end

end
stella = Person.new("Stella")
stella.name

blake = Person.new("Blake") 
blake.bank_account


