require 'pry'
class Person
  attr_accessor :bank_account, :happiness, :hygiene, :salary
  attr_reader :name
  @@all = []

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8, salary=0)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
    @salary = salary
    @@all << self
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

  def happiness
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    else
      @happiness
    end
  end

  def self.all
    @@all
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    @bank_account += salary
    @salary = salary
    puts "Salary is #{@salary}"
    puts "Bank Balance is #{@bank_account}"
    "all about the benjamins"

  end

  def take_bath
    self.hygiene += 4
    puts "Hygiene is #{@hygiene}"
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    puts "Hygiene is #{@hygiene}"
    puts "Happiness is #{@happiness}"
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness +=3
    friend.happiness +=3
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic.downcase == "politics"
      self.happiness -= 2
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic.downcase == "weather"
      self.happiness += 1
      person.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

end

=begin
THIS IS THE WAY I'D HAVE DONE IT IF THE STUPID TESTS DIDN'T INSIST ON TWO SEPARATE METHODS
def check_points(points)
  if points > 10
    points = 10
  elsif points < 0
    points = 0
  end
  return points
end
=end

#Pry.start
