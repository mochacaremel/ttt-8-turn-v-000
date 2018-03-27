def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board = ["","X"," "," "," "," "," "," "," "]
puts "Enter a position on the board 1-9:"
# number_entered = user_input.to_i - 1

def move(board, index, character = "X")
     board[index] = character
      display_board(board)
end

# def input_to_index(user_input)
#   user_input = user_input.to_i
#   user_input = user_input - 1
# end
# input_to_index("1") # => 0
# input_to_index("6") # => 5
# input_to_index("invalid") # => -1

def position_taken?(board,position)
  if board[position] == " "
    false
    elsif board[position] == ""
    false
    elsif  board[position] == nil
    false
    else   board[position] == "X" || "O"
    true

  end
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
      puts 'this is a valid move'
    return true
  else
   return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = STDIN.gets.strip 
  index = input_to_index(user_input)
end

def position_taken?(board, index)
 !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def input_to_index(user_input)
  user_input = user_input.to_i
  user_input = user_input - 1
end
input_to_index("1") # => 0
input_to_index("6") # => 5
input_to_index("invalid") # => -1

final_position = number_entered()

if valid_move?(number_entered, board)
#   - make the move for index
  move(board, number_entered) 
#   - show the board
  display_board(board)
  # if valid_move?(board, index) == false
    # turn(board)
#   end
# end