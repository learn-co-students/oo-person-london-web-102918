require 'pry'

class Person

    attr_accessor :bank_account, :happiness, :hygiene
    #attr_reader :name
    #hello this is some stuff and stuff

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

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end



  def hygiene
    @hygiene
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

end
