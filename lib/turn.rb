def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def user_input 
  STDIN.gets.chomp!
end

board = ["","X"," "," "," "," "," "," "," "]
puts "Enter a position on the board 1-9:"
number_entered = user_input.to_i - 1

def move(board, index, character = "X")
    board[index] = character
      display_board(board)
end

def number_entered ; user_input.to_i - 1
end

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

def valid_move?(board, position)
move = position.to_i
test = move - 1
if position_taken?(board, test) == false && test.between?(0, 8)
true
else false
end
end

# def valid_move?(board, index)
#   if input_to_index(0,8) && !position_taken?(board, index)
#       puts 'this is a valid move'
#     return true
#   else
#   return false
#   end
# end

def turn(board)
  puts "Please enter 1-9:"
  user_input = STDIN.gets.strip 
  index = input_to_index(user_input)
end

def position_taken?(board, index)
!(board[index] == " " || board[index] == "" || board[index] == nil)
end

def turn(board)
  puts "Please enter 1-9:"
    userInput = gets.strip # gets the user input and calls input_to_index
    index = input_to_index(userInput)
    if !valid_move?(board, index) # asks for input again after a failed validation
      turn(board)
    else # makes valid moves
      move(board, index, character(board))
    end
  display_board(board)
end




def user_input
  user_input.to_i - 1
end

def input_to_index
  user_input = user_input.to_i - 1
end

input_to_index("1") # => 0
input_to_index("6") # => 5
input_to_index("invalid") # => -1

final_position = number_entered()

if valid_move?(number_entered, board)
  move(board, number_entered) 
  display_board(board)
end

    allow(self).to receive(:gets).and_return("5")

      output = capture_puts{ turn(board) }

      expect(output).to include("   |   |   ")
      expect(output).to include("-----------")
      expect(output).to include("   | X |   ")
      expect(output).to include("-----------")
      expect(output).to include("   |   |   ")