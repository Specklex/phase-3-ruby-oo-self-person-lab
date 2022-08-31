# your code goes here
require 'pry'
class Person

    attr_accessor :bank_account, :happiness, :hygiene #be able to change
    attr_reader :name #only read name, no changing

    def initialize name
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def clean? # ? means a boolean
        self.hygiene > 7
    end

    def happy? # ? means a boolean
        self.happiness > 7
    end

    def happiness= num
        @happiness = if num > 10
                        10
                    elsif num < 10 
                        0
                    else
                        num
                    end
        end
   
    def hygiene= num
        @hygiene = if num > 10
                        10
                    elsif num < 10 
                        0
                    else
                        num
                    end
        end

    def get_paid amount
        self.bank_amount += amount #our bank account (the one currently on)
        "all about the benjamins"
    end

    def take_bath 
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def take_bath 
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend friend
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation friend, topic
        binding.pry
       case topic
         when 'politics' 
           self.happiness -= 2
           friend.happiness -= 2
             "blah blah partisan blah lobbyist"
         when 'weather' 
           self.happiness += 1
           friend.happiness += 1
             "blah blah sun blah rain"
         else 
             "blah blah blah blah blah"
        end
    end
end



binding.pry