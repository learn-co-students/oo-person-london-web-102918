require 'pry'

class Person

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def name
    @name
  end

  #----Show me the MONEY!!!----

  def bank_account
    @bank_account
  end

  def get_paid(salary_amount)
    new_balance = @bank_account + salary_amount
    @bank_account = new_balance
    "all about the benjamins"
  end

#----Life, liberty and the pursuit of happiness----

  def happiness
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness =  0
    else
      @happiness
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def self.call_friend(friend)
    #friend = Person.new("#{friend}")
    communication = @happines + 3
    @happiness = communication

  end


#----Cleanliness is next to godliness----

  def hygiene=(new_hygiene)
    @hygiene = new_hygiene

    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene =  0
    else
      @hygiene
    end
  end

  # def hygiene=()
  #
  # end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -= 3
    self.hygiene
    @happiness += 2
    self.happiness
    "♪ another one bites the dust ♫"
  end

end
