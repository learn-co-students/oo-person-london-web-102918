require 'pry'

class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account, :salary

  @@all = []

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8, salary = 0)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
    @salary = salary
    @@all << self
  end
#binding.pry
  def happiness=(amount)
    @happiness = amount
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
  end

  def hygiene=(amount)
    @hygiene = amount
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
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
    amount < 10 ? self.happiness += 1 : self.happiness += 2
    @bank_account += @salary
    "all about the benjamins"
  end

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
