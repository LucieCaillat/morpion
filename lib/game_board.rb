require 'bundler'
Bundler.require


class GameBoard
    attr_accessor :a1 , :a2 , :a3 , :b1 , :b2 , :b3 , :c1 , :c2 , :c3
    

    def initialize
        @a1 = " "
        @a2 = " "
        @a3 = " "
        @b1 = " "
        @b2 = " "
        @b3 = " "
        @c1 = " "
        @c2 = " "
        @c3 = " "
    end

    def display #affichage
        puts "\n      1   2   3  "
        puts "   A  #{@a1} | #{@a2} | #{@a3}  "  
        puts "     ----------- "
        puts "   B  #{@b1} | #{@b2} | #{@b3}  "
        puts "     ----------- "
        puts "   C  #{@c1} | #{@c2} | #{@c3}  "
    end
end
