require 'pry'

class Person

    #attr_accessor :bank_account, :happiness, :hygiene
    #attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def name
    @name
  end

  def bank_account
    @bank_account
  end

  def happiness
    @happiness
  end

  def hygiene
    @hygiene
  end

end
