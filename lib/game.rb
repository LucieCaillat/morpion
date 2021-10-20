require 'bundler'
Bundler.require


class Game
    attr_accessor :player1 , :player2 , :game_board


    def initialize(player1_name , player2_name)
        @player1 = Player.new(player1_name)
        @player2 = Player.new(player2_name)
        @game_board = GameBoard.new
        @player1.pawn = "X"
        @player2.pawn = "O"
    end

    def menu(player)
        puts " #{player.name} c'est à votre tour de jouer"
    end

    def menu_choice(player)
        choice = gets.chomp
        case choice
        when  "A1" , "a1"
            game_board.a1 = player.pawn
        when  "A2" , "a2"
            game_board.a2 = player.pawn
        when  "A3" , "a3"
            game_board.a3 = player.pawn
        when  "B1" , "b1"
            game_board.b1 = player.pawn
        when  "B2" , "b2"
            game_board.b2 = player.pawn
        when  "B3" , "b3"
            game_board.b3 = player.pawn
        when  "C1" , "c1"
            game_board.c1 = player.pawn
        when  "C2" , "c2"
            game_board.c2 = player.pawn
        when  "C3" , "c3"
            game_board.c3 = player.pawn
        else 
            puts " Je n'ai pas compris votre réponse"
        end
    end

    def game_run
         
        while game_board.a1 == " " || game_board.a2 == " " || game_board.a3 == " " || game_board.b1 == " " || game_board.b2 == " " || game_board.b3 == " " || game_board.c1 == " " || game_board.c2 == " " || game_board.c3 == " "
            menu(player1)
            menu_choice(player1)
            game_board.display
            menu(player2)
            menu_choice(player2)
            game_board.display
         
        end
    end      

end