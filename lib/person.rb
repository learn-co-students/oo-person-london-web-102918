# your code goes herrequire 'pry'
# your code goes hePerson
  # instantiation
  #   ::new
    #   a new person is instantiated with a name (FAILED - 1)
    # #initialize
    #   #name
    #     a new person knows its name once he/she has been initialized (FAILED - 2)
    #     a new person instance cannot overwrite the name it was instantied with (FAILED - 3)
    #   #bank_account
    #     a new person instance is initialized with a bank_account balance of $25 (FAILED - 4)
    #     a person instance can change his/her bank_account amount (FAILED - 5)
    #   #happiness
    #     a new person instance is initialized with a happiness index of 8 (FAILED - 6)
    #     a person instance can change his/her happiness index (FAILED - 7)
    #     a person's happiness doesn't exceed 10 (FAILED - 8)
    #     a person's happiness doesn't go below 0 (FAILED - 9)
      #hygiene
#         a person instance is initialized with a hygiene index of 8 (FAILED - 10)
#         a person instance can change its hygiene index (FAILED - 11)
#         a person instance's hygiene index cannot exceed 10 (FAILED - 12)
#         a person instance hygiene index cannot be less than 0 (FAILED - 13)
#   non-attribute instance methodsre


class Person

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end

    def happiness=(num)
      if num > 10
        @happiness = 10
      elsif num < 0
        @happiness = 0
      else
      @happiness = num
      end
   end

   def hygiene=(num)
     if num > 10
       @hygiene = 10
     elsif num < 0
       @hygiene = 0
     else
     @hygiene = num
     end
   end

   def happy?
     @happiness > 7 ? true : false
   end

   def clean?
     @hygiene > 7 ? true : false
   end

   def get_paid(salary)
     @bank_account += salary
     return 'all about the benjamins'
   end

   def take_bath
     self.hygiene += 4
     return "♪ Rub-a-dub just relaxing in the tub ♫"
   end

   def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end
#"Hi Felix! It's Stella. How are you?"
    def call_friend(person)
      person.happiness += 3
      self.happiness += 3
      return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
      if topic = politics
        self.happiness -= 2
        person.happiness -= 2
        puts "blah blah partisan blah lobbyist"
      elsif topic = weather
        self.happiness += 1
        person.happiness += 1
        puts "blah blah sun blah rain"
      else
        return "blah blah blah blah blah"
      end
    end

end
