class Player
attr_accessor :move
  def initialize()
    print "Enter your move(1-9): "
    @move  = gets.chomp()
     @move = @move.to_i
  end
end


class Board
    attr_accessor :board
    def initialize()
        
         @board = Array.new(3) do
            Array.new(3)
         end
        
         print_board()
    
    end

    def print_board
              
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
    num = 89 ##here num will be the value  of player move we going to senf through game class at the object of board..t
    def inappropriate_move(i,j)
        if (num<1 || num >= 9)
          return true
        end
        
        if(@board[i][j].is_a?(String))
          return true
        end
    end

    
    
         
end


class Game
  def initialize
    @board =  Board.new()
  end

  def start
     p1 = Player.new();
     
     i = (p1.move / 3).floor
     j = p1.move % 3 - 1
     puts i,j

     @board[i][j] = 'X'
     @board.print_board();

  end
end
 
  
 g1 = Game.new()
 g1.start()
 
 