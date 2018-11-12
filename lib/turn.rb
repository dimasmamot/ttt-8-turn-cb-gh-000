def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2] }"
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5] }"
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8] }"
end

def valid_move?(board, index)
  if index.between?(0,8)
    if position_taken?(board, index)
      return false
    else
      return true
    end
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else
    return true
  end
end

def move(board, index, symbol="X")
  board[index] = symbol
end

def number_to_index(number)
  return number-1
end

def turn(board)
  puts "Please enter 1-9:"
  number = gets.chomp.strip
  index = number_to_index(number.to_i)
  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
end
