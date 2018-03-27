def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

  def move(board, index, character = "X")
    # puts move[board, index, character]
    # position = gets.strip
    # character = X
  board[index] = character
  # move(board, 2)
  # puts move(board)
end