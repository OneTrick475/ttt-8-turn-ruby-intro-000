def valid_move?(board, index)
  if position_taken?(board, index) == false &&  index.between?(0, 8)
   return true
   else return false
   end
end

def position_taken?(board, index)
  (board[index] ==  " " || board[index] == "" || board[index] == nil) ?
    false : true
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  uinput = gets.strip
  input_to_index(uinput)
  if valid_move(board, uinput)
    move(board, uinput)
else
  puts 'Please enter 1-9:'
end
end
