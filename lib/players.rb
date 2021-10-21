require 'bundler'
Bundler.require


class Player
    attr_accessor :name 
    attr_accessor :points
    attr_accessor :pawn

    def initialize(name_to_save)
        @name = name_to_save
        @points = 0
        @pawn = " "
    end

    def choise_name
        sleep(1)
        puts "\n#{@name}, veuillez entrer votre nom :"
        print "=> "
        @name = gets.chomp
        sleep(0.5)
        puts"\nBonjour #{@name}"
    end

    def score
        puts "#{@name} : #{@points} point"
    end
end







