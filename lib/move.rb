def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
def input_to_index(position)
  position.to_i-1
end
def move(board, position, value="X")
  index=input_to_index(position)
  board[index]=value
#  board[position]=value
end
