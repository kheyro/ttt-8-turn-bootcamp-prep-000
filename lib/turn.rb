def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  input_to_index(index)

end

def move(board, index, player = "X")
    board[index] =  player
end

def input_to_index(index = -1)
  index = index.to_i - 1
end

def valid_move?(board, index)
  if index.between?(0, 8) && (board[index] == " " || board[index] == "" || board[index] == nil)
    return true
  else
    return false
  end
end
