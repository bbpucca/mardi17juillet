class Board

  def initialize

#we create instances for all of the 9 cases of the board
         
    "@1" = BoardCase.new
    "@2" = BoardCase.new
    "@3" = BoardCase.new
    "@4" = BoardCase.new
    "@5" = BoardCase.new
    "@6" = BoardCase.new
    "@7" = BoardCase.new
    "@8" = BoardCase.new
    "@9" = BoardCase.new

    #we put all the cases inside of an array in order later to know the position of each of the cases
    @board = ["@1","@2","@3","@4","@5","@6","@7","@8","@9"]
  end

  def print_board
    #Method that prints the board game
    #We display the values of each of the cases according to their index, taking the value 'boardcase.new'

        puts ""
        puts "#{@board['@1'].status}|#{@board['@2'].status}|#{@board['@3'].status}"
        puts "-----"
        puts "#{@board['@4'].status}|#{@board['@5'].status}|#{@board['@6'].status}"
        puts "-----"
        puts "#{@board['@7'].status}|#{@board['@8'].status}|#{@board['@9'].status}"
        puts ""

  end



  def   update_board(pos, value)
    @board[pos] = value;
  end



  #We create a method that checks out if the player wins

  def win
    
       end_game = false
      if @board['1'] != ' ' && @board['5'] != ' ' && @board['9'] != ' '
        if (@board['1'] == @board['2'] && @board['1'] == @board['3'])
            end_game=true
            victory=@board['1']
        elsif (@board['4'] == @board['5'] && @board['4'] == @board['6'])
            end_game=true
            victory=@board['4']
        elsif (@board['7'] == @board['8'] && @board['7'] == @board['9'])
            end_game=true
            victory=@board['7']
        elsif (@board['1'] == @board['4'] && @board['1'] == @board['7'])
            end_game=true
            victory=@board'1']
        elsif (@board['2'] == @board['5'] && @board['2'] == @board['8'])
            end_game=true
            victory=@board['2']
        elsif (@board['3'] == @board['6'] && @board['3'] == @board['9'])
            end_game=true
            victory=@grid['3']
        elsif (@board['1'] == @board['5'] && @board['1'] == @board['9'])
            end_game=true
            victory=@board['1']
        elsif (@board['7'] == @board['5'] && @board['7'] == @board['3'])
            end_game=true
            victory=@board['7']
        else
            end_game = false
        end
      end
        if end_game 
           puts "the victory of this game is #{victory}"
           return true
        end


end


