# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]
  
def won(board)
WIN_COMBINATIONS.each do |combination|
  if board[combination[0]] == "X" && board[combination[1]] == "X" && board[combination[2]] == "X"
    return combination
  else
    false
  end
end
end
