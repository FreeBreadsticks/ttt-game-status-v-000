# Define your WIN_COMBINATIONS constant
require 'pry'


WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #top row
  [0,4,8], #diagonal
  [2,4,6], #diagonal
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8] #right column
 ]

def won?(board)
   
  WIN_COMBINATIONS.each do |combos|    
    win_index_1 = combos[0]
    win_index_2 = combos[1]
    win_index_3 = combos[2]

    if board[win_index_1] == "X" && board[win_index_2] == "X" && board[win_index_3] == "X"
      return combos
    elsif board[win_index_1] == "O" && board[win_index_2] == "O" && board[win_index_3] == "O"
      return combos
    end
  end
  
  return false
end
