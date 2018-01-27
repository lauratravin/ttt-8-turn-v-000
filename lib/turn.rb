def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input_to_index(user_input)
end

def input_to_index(user_input)
   index = user_input.to_i - 1
end

def valid_move?(board, position)
  if position.between?(0,8) && board[position] == " "
    true
  else
    false
  end
end


def move(board, index, value="X")
  board[index] = value
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def position_taken?(board, position)
  if board[position] == "X" || board[position] == "O"
    true
  elsif board[position] == " "
    false
  else
    false
end
