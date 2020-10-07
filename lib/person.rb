# your code goes here
# your code goes here
require 'pry'
class Person 

  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    else
      @happiness
    end
  end

  def hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    else
      @hygiene
    end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end
#why weren't we able to do the same code for clean? and happy?

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend_name)
    self.happiness += 3
    friend_name.happiness += 3
    "Hi #{friend_name.name}! It's #{self.name}. How are you?"
  end
  #why did we need to do the `.name` for the friend?

  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness -= 2
      self.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    elsif topic != "weather" || "politics"
      "blah blah blah blah blah"
    end


  end




end
stella = Person.new("Stella")
stella.name

blake = Person.new("Blake") 
blake.bank_account #= 30
#binding.pry