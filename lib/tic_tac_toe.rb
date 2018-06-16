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
  
end