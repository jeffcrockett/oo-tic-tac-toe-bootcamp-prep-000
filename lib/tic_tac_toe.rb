class TicTacToe
  def initialize
    @board = Array.new(9, " ")
  end
    WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
                    [0, 3, 6], [1, 4, 7], [2, 5, 8],
                    [0, 4, 8], [2, 4, 6]]
  
  def board
    @board
  end
  
  def position_taken?(index)
    !(@board[index].nil? || @board[index] == " ")
  end
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input)
    input.to_i - 1
  end
  
  def move(index, char='X')
    @board[index] = char
  end
  
  def valid_move?(index)
    if index.between?(0, 8) and !position_taken?(@board, index)
      return true 
    else
      return false
    end
  end
  
  def turn
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(index)
      move(index, current_player)
      display_board
    else
      turn
    end
  end
  
  def turn_count
    counter = 0
    @board.each do |square|
      if square == 'X' || square == 'O'
        counter += 1 
      end
    end
    counter
  end

  def current_player
    counter = turn_count
    player = counter % 2 == 0 ? 'X' : 'O'
  end
  
  
end