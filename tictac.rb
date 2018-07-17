class Morpion

   def initialize
      create_grid
      get_player
      show_grid
   end
   def get_player
      puts "Let play some Tic Tac Toe"
      puts ""
    puts "comment s'apelle le joueur 'X'?"
    @firstplayer =gets.chomp
    puts "comment s'apelle le joueur 'O'?"
    @secondplayer =gets.chomp
      @player1='X'
      @player2='O'
          puts ""
          puts "Where would you like to move? (check out the grid below and type any number 1-9 to place your symbol): "
          puts " 1 | 2 | 3 "
          puts "---+---+---"
          puts " 4 | 5 | 6 "
          puts "---+---+---"
          puts " 7 | 8 | 9 "


 
   end

   def create_grid
        @grid = {
            '1' => ' ',
            '2' => ' ',
            '3' => ' ',
            '4' => ' ',
            '5' => ' ',
            '6' => ' ',
            '7' => ' ',
            '8' => ' ',
            '9' => ' '
        }
   end

    def show_grid
        puts ""
        puts "#{@grid['1']}|#{@grid['2']}|#{@grid['3']}"
        puts "-----"
        puts "#{@grid['4']}|#{@grid['5']}|#{@grid['6']}"
        puts "-----"
        puts "#{@grid['7']}|#{@grid['8']}|#{@grid['9']}"
        puts ""
    end

   def play
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
        puts player == 'X' ? "It's #{@firstplayer} turn!" : "It's #{@secondplayer} turn!"
        puts ""
        cell = gets.chomp
        unless @grid.keys.include?(cell) #check if the user entered a number corresponding to the grid
            puts ""
            puts "it has to be a number from 1 to 9"
            player_turn(player)
        end
        if @grid[cell] == ' ' #check if cell in grid is empty for user input
            @grid[cell] = player
        else
            puts ""
            puts "That cell is occupied. Choose again!"
            player_turn(player)
        end
        show_grid
   end

   def game_checker
        end_game = false
      if @grid['1'] != ' ' && @grid['5'] != ' ' && @grid['9'] != ' '
        if (@grid['1'] == @grid['2'] && @grid['1'] == @grid['3'])
            end_game=true
            victory=@grid['1']
        elsif (@grid['4'] == @grid['5'] && @grid['4'] == @grid['6'])
            end_game=true
            victory=@grid['4']
        elsif (@grid['7'] == @grid['8'] && @grid['7'] == @grid['9'])
            end_game=true
            victory=@grid['7']
        elsif (@grid['1'] == @grid['4'] && @grid['1'] == @grid['7'])
            end_game=true
            victory=@grid['1']
        elsif (@grid['2'] == @grid['5'] && @grid['2'] == @grid['8'])
            end_game=true
            victory=@grid['2']
        elsif (@grid['3'] == @grid['6'] && @grid['3'] == @grid['9'])
            end_game=true
            victory=@grid['3']
        elsif (@grid['1'] == @grid['5'] && @grid['1'] == @grid['9'])
            end_game=true
            victory=@grid['1']
        elsif (@grid['7'] == @grid['5'] && @grid['7'] == @grid['3'])
            end_game=true
            victory=@grid['7']
        else
            end_game = false
        end
      end
        if end_game 
           puts "the victory of this game is #{victory}"
           return true
        end
   end


end


m=Morpion.new
m.play