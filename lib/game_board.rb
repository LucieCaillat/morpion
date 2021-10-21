require 'bundler'
Bundler.require


class GameBoard
    attr_accessor :a1 , :a2 , :a3 , :b1 , :b2 , :b3 , :c1 , :c2 , :c3
    

    def initialize
        @a1 = Case.new("A1")
        @a2 = Case.new("A2")
        @a3 = Case.new("A3")
        @b1 = Case.new("B1")
        @b2 = Case.new("B2")
        @b3 = Case.new("B3")
        @c1 = Case.new("C1")
        @c2 = Case.new("C2")
        @c3 = Case.new("C3")
    end

    def display #affichage
        puts "\n      1   2   3  "
        puts "   A  #{@a1.value} | #{@a2.value} | #{@a3.value}  "  
        puts "     ----------- "
        puts "   B  #{@b1.value} | #{@b2.value} | #{@b3.value}  "
        puts "     ----------- "
        puts "   C  #{@c1.value} | #{@c2.value} | #{@c3.value}  "
        puts "\n\n"
    end

    def someone_won?
        if @a1.value != " " && @a1.value == @a2.value &&  @a1.value == @a3.value
            return true
        elsif @b1.value != " " && @b1.value == @b2.value &&  @b1.value == @b3.value
            return true
        elsif @c1.value != " " && @c1.value == @c2.value &&  @c1.value == @c3.value
            return true
        elsif @a1.value != " " && @a1.value == @b1.value &&  @a1.value == @c1.value
            return true
        elsif @a2.value != " " && @a2.value == @b2.value &&  @a2.value == @c2.value
            return true
        elsif @a3.value != " " && @a3.value == @b3.value &&  @a3.value == @c3.value
            return true
        elsif @a1.value != " " && @a1.value == @b2.value &&  @a1.value == @c3.value
            return true
        elsif @a3.value != " " && @a3.value == @b2.value &&  @a3.value == @c1.value
            return true
        else
            return false
        end
    end

end
