def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  if valid_move?(board, position)

       move(board, position, value="X")

  else

      until valid_move?(board, position)
        puts "Not valid enter"
        turn(board)
        user_input = gets.strip
        position = input_to_index(user_input)
      end

  end


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
