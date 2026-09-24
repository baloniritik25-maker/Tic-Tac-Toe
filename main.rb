class Player
    attr_accessor :move
  def initialize()
    print "Enter your move(1-9): "
    self.move  = gets.chomp()
  end
end


class Board
    
    def initialize(player = Player.new)
        
        @board = Array.new(3,Array.new(3))

        puts player.move()
        @player = player.move();
        puts @player

        for i in 0...3
               
            for j in 0...3
                
                @board[i][j] = (3*i) + j + 1;
                print "#{@board[i][j]}"
                if(j!=2)
                    print "  |  " 
                end
            end
            if(i!=2)
                puts ""
                puts "============"
            else
                puts ""
            end
        end
    end
         
end


class Game
  
end
 p1 = Player.new()
  
 b1 = Board.new(p1);

 
 