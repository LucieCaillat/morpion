require 'bundler'
Bundler.require


class Game
    attr_accessor :player1 , :player2 , :game_board , :cases


    def initialize
        @player1 = Player.new("Player 1")
        @player2 = Player.new("Player 2")
        @game_board = GameBoard.new
        @player1.pawn = "X"
        @player2.pawn = "O"
        @cases = [game_board.a1 , game_board.a2 , game_board.a3 , game_board.b1 , game_board.b2 , game_board.b3 , game_board.c1 , game_board.c2 , game_board.c3]
    end

    def menu(player)
        puts " #{player.name} c'est à votre tour de jouer" 
        puts "\n Que voulez vous jouer?"
        @cases.each do |each_case|
            print " - #{each_case.name}"
        end
        puts " "

    end

    def menu_choice(player)
        while 1 == 1
            print "=> "
            choice = gets.chomp
            @cases.each do |each_case|
                if each_case.name == choice.upcase 
                    each_case.value = player.pawn
                    @cases.delete(each_case)
                    return
                end
            end
            puts " Je n'ai pas compris votre réponse"
        end
    end




    def game_run
        
        player1.choise_name
        player2.choise_name
        game_board.display
       
        while @cases != []
           
            menu(player1)
            menu_choice(player1)
            game_board.display
            return puts "Bravo #{player1.name} !! Tu as gagné !\n\n " if game_board.someone_won?
            break if @cases ==[]
            menu(player2)
            menu_choice(player2)
            game_board.display
            return puts "Bravo #{player2.name} !! Tu as gagné !\n\n " if game_board.someone_won?
         
        end

        puts "Fin de partie : personne n'a gagné\n\n "
    end      

end