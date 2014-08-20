class UsersController < ApplicationController


  # 0 empty
  # 1 yellow
  # 2 red 

  def first
  	@board = initalize_board
  end

  def second

  end

  def initalize_board
  	board = []
  	t = 0
  	(0..6).each do |i|  		
  		board_column = []
  		(0..6).each do |j|
  			board_column << [t, 0]
  			t = t + 1
  		end  
  		board << board_column	
	end
	board
  end 

  def initalize_board_red
  	board = []
  	t = 0
  	(0..6).each do |i|  		
  		board_column = []
  		(0..6).each do |j|
  			board_column << [t, 2]
  			t = t + 1
  		end  
  		board << board_column	
	end
	board
  end 

  def play
  	column = params["column"]
  	color = params["color"]
  	board = params["board"]
  	puts "play " + column + " " + color
  	#add_token(column, color)
  	@board = initalize_board_red
  	render :json => @board
  end

  def add_token(column, color)

  	puts "**************************" + @board[column].inspect 

  	#@board[1] = 
  end
end
