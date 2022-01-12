require 'bundler'
Bundler.require


class Tournament 
    attr_accessor :player1 , :player2
    
    def initialize
        @player1 = Player.new("Player 1")
        @player2 = Player.new("Player 2")
    end
    
    def title
        system("clear")
        puts "\n\n\n"
        puts "  -----------------------------------------------------------------------------  "
        sleep(0.07)
        puts "#|       __  __                  _               ____   ___   ___   ___        |#"
        sleep(0.07)
        puts "#| __/\\_|  \\/  | ___  _ __ _ __ (_) ___  _ __   |___ \\ / _ \\ / _ \\ / _ \\__/\\__ |#"
        sleep(0.07)
        puts "#| \\    / |\\/| |/ _ \\| '__| '_ \\| |/ _ \\| '_ \\    __) | | | | | | | | | \\    / |#"
        sleep(0.07)
        puts "#| /_  _\\ |  | | (_) | |  | |_) | | (_) | | | |  / __/| |_| | |_| | |_| /_  _\\ |#"
        sleep(0.07)
        puts "#|   \\/ |_|  |_|\\___/|_|  | .__/|_|\\___/|_| |_| |_____|\\___/ \\___/ \\___/  \\/   |#"
        sleep(0.07)
        puts     "  -----------------------------------------------------------------------------  "
        puts " "
        for i in "                        Le jeu de Morpion du futur !!!                           ".chars.to_a
            print i
            sleep(0.01)
        end
        puts " "
        sleep(0.1)
        puts     "                              Par Hackerwoman"
        puts "\n\n\n\n\n"
        sleep (1)
    end
     
    def presentation 
        puts "Bienvenue dans Morpion 2000 !!"
        sleep(0.5)
        @player1.choise_name
        @player2.choise_name
    end

    def score_presentation 
        sleep(0.1)
        puts "\n\nVoici vos scores actuels :"
        sleep(0.1)
        @player1.score
        @player2.score
    end


    def tournament_run
        title
        presentation        
        sleep(1)
        score_presentation        
        puts " \n\nAppuyer sur Entrée pour commençer à jouer !"
        puts "\n\n"
        gets               
        games = Game.new(@player1 , @player2)
        games.game_run
        score_presentation                
        sleep(0.1)
        puts "\nVoulez-vous rejouer ? O/N "
        print "==> "
        choice = gets.chomp
        while choice.downcase == "o"
            games = Game.new(@player2 , @player1)
            games.game_run
            score_presentation                
            sleep(0.1)
            puts "\nVoulez-vous rejouer ? O/N "
            print "==> "
            choice = gets.chomp
            break if choice.downcase != "o"
            games = Game.new(@player1 , @player2)
            games.game_run
            score_presentation                
            sleep(0.1)
            puts "\nVoulez-vous rejouer ? O/N "
            print "==> "
            choice = gets.chomp
        end
        
        sleep(1)
        puts "\n\nMerci d'avoir joué à Morpion 2000 !!!!"
        puts "\n\n\n\n"
        
    end



end