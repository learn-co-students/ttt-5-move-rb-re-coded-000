def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
def move(board,input,value ="X")
  index = input_to_index(input)
  index = index - 1
  board[index]=value
end
def input_to_index(input)
  index = input.to_i
end
