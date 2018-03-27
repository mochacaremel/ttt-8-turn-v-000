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
  input = gets.strip index = input_to_index(user_input)
  if valid_move?(board, index) == false
    turn(board)
  end
  move(board, index) 
end
  display_board(board)
end