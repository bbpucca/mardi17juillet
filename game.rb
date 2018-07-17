
class Game

  def initialize
    #TO DO : créé 2 joueurs, créé un board


    puts "=================================="
    puts "Bienvenue dans mon jeu Tic Tac Toe!"
    puts ""
    puts "comment s'apelle le joueur 1?"
	@name_player_one = gets.chomp
	puts "comment s'apelle le joueur 2?"
    @name_player_two = gets.chomp


          puts ""
          puts "choisir un numéro ci-dessous pour placer votre symbole): "
          puts " 1 | 2 | 3 "
          puts "---+---+---"
          puts " 4 | 5 | 6 "
          puts "---+---+---"
          puts " 7 | 8 | 9 "

    @player1 = Player.new(@name_player_one, "X")
    @player2 = Player.new(@name_player_two, "O")
    @board_game = Board.new


   end
end




   def go
  # TO DO : lance la partie

       number_turns=1
       while number_turns < 10
        number_turns.odd? ? player_turn(@player1) : player_turn(@player2)
        # game_checker
        if game_checker
          break
        end
        number_turns+=1
       end  
   end


   def player_turn(player)
        puts player == 'X' ? "It's X's turn!" : "It's O's turn!"
        puts ""
        cell = gets.chomp
        unless @board.keys.include?(cell) #vérifier si l'utilisateur a entré un nombre correspondant à la grille
            puts ""
            puts "it has to be a number from 1 to 9"
            player_turn(player)
        end
        if @board[cell] == ' ' #vérifier si la cellule de la grille est vide pour l'entrée de l'utilisateur
            @board[cell] = player
        else
            puts ""
            puts "That cell is occupied. Choose again!"
            player_turn(player)
        end
        print_board
   end


