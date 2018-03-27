def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

win_conditions = [
  [0, 1, 2],
  [0, 3, 6],
  [0, 4, 8],
  [1, 4, 7],
  [2, 5, 8],
  [2, 4, 6],
  [3, 4, 5],
  [6, 7, 8],
]

def input_to_index(input)
# convert input to integer and subtract 1.
  input.to_i - 1

end

def move(board, index, symbol)
  board[index] = symbol
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil # safety measures
      taken = false
    elsif board[index] == "X" || board[index] == "O"
      taken = true
  end
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
 
end

def turn(board)
  puts "Please enter 1-9:"
    userInput = gets.strip # gets the user input and calls input_to_index
    index = input_to_index(userInput)
    if !valid_move?(board, index) # asks for input again after a failed validation
      turn(board)
    else # makes valid moves
      move(board, index, current_player(board))
    end
  display_board(board)
end


def turn_count(board)
  # counts occupied positions
  count = 0
  board.each do |index|
    if index != " "
      count += 1
    end
  end
    count
 end

def current_player(board)
  if turn_count(board) % 2 == 0

    return "X"
  else

    return "O"
  end
end

def won?(board)
  win_conditions.each do |win|

  if win.all?{|y| board[y] == "X"}
    return win
    elsif win.all?{|y| board[y] == "O"}
      return win
    end
  end
  return false 
end

def full?(board)
  board.all? do |position|
    position == "X" || position == "O"
  end
end

def draw?(board)
  # true if no winner and board is full
  !(won?(board)) && full?(board)
end

    def over?(board)
      if full?(board) == true
        return true # returns true for a won game / draw
      end
      return false # returns false for an in-progress game
    end

def winner(board)
 # returns X when X won, O when O won and nill when no winner
 if (draw?(board) || !full?(board)) && !won?(board)
    return nil
  elsif (board[won?(board)[0]] == "X")
    return "X"
  elsif (board[won?(board)[0]] == "O")
    return "O"
  end
end

def play(board)
  while !over?(board) && !won?(board) && !draw?(board) # if the game isnt over
    turn(board) # play another turn
  end

# if the game is over
  if won?(board)
   puts "Congratulations #{winner(board)}!"
 end

# if its a draw
 if draw?(board)
   puts "Cats Game!"
 end

end












# def display_board(board)
#   puts " #{board[0]} | #{board[1]} | #{board[2]} "
#   puts "-----------"
#   puts " #{board[3]} | #{board[4]} | #{board[5]} "
#   puts "-----------"
#   puts " #{board[6]} | #{board[7]} | #{board[8]} "
# end
# def user_input 
#   STDIN.gets.chomp!
# end

# board = ["","X"," "," "," "," "," "," "," "]
# puts "Enter a position on the board 1-9:"
# number_entered = user_input.to_i - 1

# def move(board, index, character = "X")
#     board[index] = character
#       display_board(board)
# end

# def number_entered ; user_input.to_i - 1
# end

# def position_taken?(board,position)
#   if board[position] == " "
#     false
#     elsif board[position] == ""
#     false
#     elsif  board[position] == nil
#     false
#     else   board[position] == "X" || "O"
#     true

#   end
# end

# def valid_move?(board, position)
# move = position.to_i
# test = move - 1
# if position_taken?(board, test) == false && test.between?(0, 8)
# true
# else false
# end
# end

# # def valid_move?(board, index)
# #   if input_to_index(0,8) && !position_taken?(board, index)
# #       puts 'this is a valid move'
# #     return true
# #   else
# #   return false
# #   end
# # end

# def turn(board)
#   puts "Please enter 1-9:"
#   user_input = STDIN.gets.strip 
#   index = input_to_index(user_input)
# end

# def position_taken?(board, index)
# !(board[index] == " " || board[index] == "" || board[index] == nil)
# end

# def turn(board)
#   puts "Please enter 1-9:"
#     userInput = gets.strip # gets the user input and calls input_to_index
#     index = input_to_index(userInput)
#     if !valid_move?(board, index) # asks for input again after a failed validation
#       turn(board)
#     else # makes valid moves
#       move(board, index, character(board))
#     end
#   display_board(board)
# end




# def user_input
#   user_input.to_i - 1
# end

# def input_to_index
#   user_input = user_input.to_i - 1
# end

# input_to_index("1") # => 0
# input_to_index("6") # => 5
# input_to_index("invalid") # => -1

# final_position = number_entered()

# if valid_move?(number_entered, board)
#   move(board, number_entered) 
#   display_board(board)
# end

#     allow(self).to receive(:gets).and_return("5")

#       output = capture_puts{ turn(board) }

#       expect(output).to include("   |   |   ")
#       expect(output).to include("-----------")
#       expect(output).to include("   | X |   ")
#       expect(output).to include("-----------")
#       expect(output).to include("   |   |   ")