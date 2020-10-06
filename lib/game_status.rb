# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
  
  
def won?(board)
  final = []
  WIN_COMBINATIONS.each do |combo|
    win_index_1 = combo[0]
    win_index_2 = combo[1]
    win_index_3 = combo[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      final << win_index_1
      final << win_index_2
      final << win_index_3
      break
    end
    puts final.inspect
  end 
  if final != []
    final
  else 
    false
  end
end 


def full?(board)
  !board.include?(" ")
end 

def draw?(board)
  if won?(board) == true 
    false 
  elsif won?(board) == false && full?(board) == true 
    true 
  end 
end 

def over?(board)
  if won?(board) == true || draw?(board) == true || full?(board) == true 
    true 
  else 
    false 
  end 
end
    
def winner(board)
  if over?(board)==true
    if draw?(board) == true 
      nil 
    else 
      (won?(board)[0])
    end 
  end 
end