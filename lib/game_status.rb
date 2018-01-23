# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]
  board = ["X", "X", "X", "O", "O", " ", " ", " ", " "]

def won(board)
[0..8].each do |index|
  if board[index] == 'X'
     combinations = []
     combinations.push(index)
   end
 end
 WIN_COMBINATIONS.each do |combination|
   isAvailable = combinations.include?(combination)
   if isAvailable == true
    return combination
   end
end
if isAvailable == false
  return false
end
end

def won(board)
WIN_COMBINATIONS.each do |combination|
  if board[combination[0]] == "X" && board[combination[1]] == "X" && board[combination[2]] == "X"
    return combination
  end
end
end
