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
        puts "\n#{@name} veuillez rentrer votre nom :"
        print "=> "
        @name = gets.chomp
        puts"\nBonjour #{@name}"
    end
end







