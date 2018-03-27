def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, character = "X")
     board[index] = character
end

def input_to_index(user_input)
  user_input = user_input.to_i
  user_input = user_input - 1
end
input_to_index("1") # => 0
input_to_index("6") # => 5
input_to_index("invalid") # => -1

