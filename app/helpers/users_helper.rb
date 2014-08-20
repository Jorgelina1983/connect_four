module UsersHelper

 def self.initalize_board
  	board = []
  	t = 0
  	(0..6).each do |i|  		
  		board1 = []
  		(0..6).each do |j|
  			board1 << ["#{t}", 0]
  			t = t + 1
  		end  
  		board << board1		
	end
	board
  end 
end
