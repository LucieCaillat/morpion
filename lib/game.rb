require 'bundler'
Bundler.require


class Game
    attr_accessor :player1 , :player2 , :game_board , :cases


    def initialize (player1_to_save , player2_to_save)
        @player1 = player1_to_save
        @player2 = player2_to_save
        @game_board = GameBoard.new
        @player1.pawn = "X"
        @player2.pawn = "O"
        @cases = [game_board.a1 , game_board.a2 , game_board.a3 , game_board.b1 , game_board.b2 , game_board.b3 , game_board.c1 , game_board.c2 , game_board.c3]
    end

    def menu(player)
        puts "## #{player.name}, c'est à votre tour de jouer" 
        puts "\nQue voulez vous jouer ?"
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
            puts "Je n'ai pas compris votre réponse"
        end
    end

    def fix_board
        system("clear")
        puts "\n\n#{player1.name} joue en première position avec les pions #{player1.pawn}"
        puts "#{player2.name} joue en seconde position avec les pions #{player2.pawn}"
        puts "\n\n"
        game_board.display
    end




    def game_run
        
        system("clear")
        sleep(0.3)        
        puts "\n\n#{player1.name} joue en première position avec les pions #{player1.pawn}"
        sleep(0.3)
        puts "#{player2.name} joue en seconde position avec les pions #{player2.pawn}"
        puts "\n\n"
        sleep(0.8)
        game_board.display
        
        while @cases != []       

            sleep(0.8)
            menu(player1)
            menu_choice(player1)
            fix_board
            if game_board.someone_won?
                player1.points += 1
                return puts "Bravo #{player1.name} !! Tu as gagné ! " 
            end
            break if @cases == []
            sleep(0.8)
            menu(player2)
            menu_choice(player2)
            fix_board
            if game_board.someone_won?
                player2.points += 1
                return puts "Bravo #{player2.name} !! Tu as gagné !" 
            end
         
        end

        puts "Partie nulle : c'est nul !\n\n "
    end      

end