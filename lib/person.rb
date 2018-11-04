# your code goes here

require 'pry'

class Person

  attr_reader :name
  attr_accessor :bank_account, :salary
  attr_writer :happiness, :hygiene

  @@all = []

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8, salary = 0)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
    @salary = salary
    @@all << self
  end

  def happiness
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    else @happiness
    end
  end

# Happiness can exceed 10 but the reader returns 10

  def hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    else @hygiene
    end
  end

  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(amount)
    @salary = amount
    @bank_account += @salary
    "all about the benjamins"
  end


# self.hygiene is calling the method

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when "politics"
      self.happiness -= 2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness += 1
      friend.happiness +=1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end

# Pry.start
