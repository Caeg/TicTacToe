board = [0,0,0,0,0,0,0,0,0]

boardGrapic = "          
      *       *
  1   *   2   *   3
      *       *
**********************
      *       *
  4   *   5   *   6
      *       *
**********************
      *       *
  7   *   8   *   9
      *       *
"

print boardGrapic
print"Player 1 will be X and player 2 will be @.\n"

print"The coin has been flipped!\n" 
coinflip = rand(2)
#taco
if coinflip == 0
  puts "Player 1 goes first!"
else 
  puts "Player 2 goes first!"
end

if coinflip - 1 != 0
  cark = "X"
else
  cark = "@"
end

turn = 1

if cark == "X"
  turn = 1
else
  turn = 2
end


winner = false
updated = ""
while winner == false
  puts "Player #{turn}, type a number 1-9 to place your #{cark}."

  input = gets.chomp
  

  if input.to_i < 1 || input.to_i > 9
    print "This number is either too big or not a number.:(\n"
    until input.to_i > 0 && input.to_i < 10
    puts "Please enter a valid number"

    input = gets.chomp
    end
  end

  if board[input.to_i-1] != 0
    print "This spot is taken. :(\n"
    until board[input.to_i-1] == 0
    puts "Please enter a spot that isn't taken"

    input = gets.chomp
    end
  end


  if turn - 1 == 0
    cark = "X"
  else
    cark = "@"
  end
  boardGrapic= boardGrapic.gsub(input, cark)
  print boardGrapic

  if cark == "X"
    board.delete_at(input.to_i-1)
    board.insert(input.to_i - 1, 1)
  else
  board.delete_at(input.to_i-1)
  board.insert(input.to_i - 1, 10)
  end
  if turn - 1 == 0
    cark = "@"
    turn = 2
  else
    cark = "X"
    turn = 1
  end
 

  if board[0] + board[1] + board[2] == 3
    puts "-----------------------\nThe winner is player 1!\n-----------------------"
    winner = true
  end

   if board[0] + board[4] + board[8] == 3
    puts "-----------------------\nThe winner is player 1!\n-----------------------"
    winner = true
  end

   if board[0] + board[3] + board[6] == 3
    puts "-----------------------\nThe winner is player 1!\n-----------------------"
    winner = true
  end

  if board[1] + board[4] + board[7] == 3
    puts "-----------------------\nThe winner is player 1!\n-----------------------"
    winner = true
  end

  if board[2] + board[4] + board[6] == 3
    puts "-----------------------\nThe winner is player 1!\n-----------------------"
    winner = true
  end

 if board[2] + board[5] + board[8] == 3
    puts "-----------------------\nThe winner is player 1!\n-----------------------"
    winner = true
  end


  if board[3] + board[4] + board[5] == 3
    puts "-----------------------\nThe winner is player 1!\n-----------------------"
    winner = true
  end

  if board[6] + board[7] + board[8] == 3
    puts "-----------------------\nThe winner is player 1!\n-----------------------"
    winner = true
  end


   if board[0] + board[1] + board[2] == 30
    puts "-----------------------\nThe winner is player 2!\n-----------------------"
    winner = true
  end

   if board[0] + board[4] + board[8] == 30
    puts "-----------------------\nThe winner is player 2!\n-----------------------"
    winner = true
  end

   if board[0] + board[3] + board[6] == 30
    puts "-----------------------\nThe winner is player 2!\n-----------------------"
    winner = true
  end

   if board[1] + board[4] + board[7] == 30
    puts "-----------------------\nThe winner is player 2!\n-----------------------"
    winner = true
  end

  if board[2] + board[5] + board[8] == 30
    puts "-----------------------\nThe winner is player 2!\n-----------------------"
    winner = true
  end

  if board[2] + board[4] + board[6] == 30
    puts "-----------------------\nThe winner is player 2!\n-----------------------"
    winner = true
  end

  if board[3] + board[4] + board[5] == 30
    puts "-----------------------\nThe winner is player 2!\n-----------------------"
    winner = true
  end

  if board[6] + board[7] + board[8] == 30
    puts "-----------------------\nThe winner is player 2!\n-----------------------"
    winner = true
  end


 
  if winner == false
    if  board[0] + board[1] + board[2] + board[3] +  board[4] + board[5] + board[6] + board[7] + board[8] == 54
      puts "-----------------------\nIt's a draw!\n-----------------------"
      winner = true
    end

    if  board[0] + board[1] + board[2] + board[3] +  board[4] + board[5] + board[6] + board[7] + board[8] == 45
      puts "------------\nIt's a draw!\n------------"
      winner = true
    end
  end

end


