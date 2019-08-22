#Array of the board
board = [0,0,0,0,0,0,0,0,0]

#ASCII UI for the board
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

# Generates random number to determine who goes first
coinflip = rand(2)

#Notify user who goes first
if coinflip == 0
  puts "Player 1 goes first!"
else 
  puts "Player 2 goes first!"
end

#Sets the game for who ever goes first
if coinflip - 1 != 0
  cark = "X"
else
  cark = "@"
end

turn = 1

#Sets counter for turns
if cark == "X"
  turn = 1
else
  turn = 2
end

#Loop until someone wins
winner = false
updated = ""
while winner == false
  puts "Player #{turn}, type a number 1-9 to place your #{cark}."

  input = gets.chomp
  
  #Determines if the number is valid
  if input.to_i < 1 || input.to_i > 9
    print "This number is either too big or not a number.:(\n"
    until input.to_i > 0 && input.to_i < 10
    puts "Please enter a valid number"

    input = gets.chomp
    end
  end

  #Determines if the spot is taken on the board   
  if board[input.to_i-1] != 0
    print "This spot is taken. :(\n"
    until board[input.to_i-1] == 0
    puts "Please enter a spot that isn't taken"

    input = gets.chomp
    end
  end

  #Sets who's turn will be next   
  if turn - 1 == 0
    cark = "X"
  else
    cark = "@"
  end
  boardGrapic= boardGrapic.gsub(input, cark)
  print boardGrapic

  #Adds value to an array to calculate winner   
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
  puts "the string is #{board}"

  #If statements to calculate if anyone won   
  if board[0] + board[1] + board[2] == 3
    puts "The winner is player 1!"
    winner = true
  end

   if board[0] + board[4] + board[8] == 3
    puts "The winner is player 1!"
    winner = true
  end

   if board[0] + board[3] + board[6] == 3
    puts "The winner is player 1!"
    winner = true
  end

  if board[1] + board[4] + board[7] == 3
    puts "The winner is player 1!"
    winner = true
  end

  if board[2] + board[4] + board[6] == 3
    puts "The winner is player 1!"
    winner = true
  end

 if board[2] + board[5] + board[8] == 3
    puts "The winner is player 1!"
    winner = true
  end


  if board[3] + board[4] + board[5] == 3
    puts "The winner is player 1!"
    winner = true
  end

  if board[6] + board[7] + board[8] == 3
    puts "The winner is player 1!"
    winner = true
  end


   if board[0] + board[1] + board[2] == 30
    puts "The winner is player 2!"
    winner = true
  end

   if board[0] + board[4] + board[8] == 30
    puts "The winner is player 2!"
    winner = true
  end

   if board[0] + board[3] + board[6] == 30
    puts "The winner is player 2!"
    winner = true
  end

   if board[1] + board[4] + board[7] == 30
    puts "The winner is player 2!"
    winner = true
  end

  if board[2] + board[5] + board[8] == 30
    puts "The winner is player 2!"
    winner = true
  end

  if board[2] + board[4] + board[6] == 30
    puts "The winner is player 2!"
    winner = true
  end

  if board[3] + board[4] + board[5] == 30
    puts "The winner is player 2!"
    winner = true
  end

  if board[6] + board[7] + board[8] == 30
    puts "The winner is player 2!"
    winner = true
  end



end



