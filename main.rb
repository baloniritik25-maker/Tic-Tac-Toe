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


         for i in 0...3
           for j in 0...3
            @board[i][j] = (3*i) + j + 1;        
           end
         end


         print_board()
    
    end

    def print_board
              
        for i in 0...3
               
            for j in 0...3
                
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
    
    
    
    def inappropriate_move(num) 
        
        
        if (num<1 || num > 9)
            return true
        end
        
        i = (num%3 == 0)?(num/3) - 1 : (num/3)
        j = num%3 - 1;
      
        if(@board[i][j].is_a?(String))
            return true
        end
        
        return false
    end
    
    
    def winning_logic(char)
     
        for a in 0...3
            if (@board[a][0] == char && @board[a][1] == char && @board[a][2] == char) || (@board[0][a] == char && @board[1][a] == char && @board[2][a] == char )##staright moves
                 puts "WINS BY STRAIGHT PIECES"
                  
                return true          
            end 
            
        end

        if (@board[0][0] == char && @board[1][1] == char && @board[2][2] == char) || (@board[0][2] == char && @board[1][1] == char  && @board[2][0]  == char)##diagnols
          puts "WIN BY DIAGONAL"
          return true

        end
        return false            
    end
    
    def tie()
        
        return @board.flatten.all?{|x| x.is_a?(String) }
    end
    
    
    def make_move(num,char)

      i = (num%3 == 0)?(num/3) - 1 : (num/3)
      j = num%3 - 1;
    

        @board[i][j] = char
        
        
    end
end 



class Game
  def initialize
    @board =  Board.new()
    @char = 'X'
  end


  def start
    
    loop do
        
        
        puts "\n \n"
        p1 = Player.new()
        
        while(@board.inappropriate_move(p1.move))
            
            puts "\n \n"
            p1 = Player.new()
            
        end
        
        @board.make_move(p1.move , @char)
        
        @board.print_board()
        
        
        break if(@board.tie || @board.winning_logic(@char))
        
        @char = (@char == 'X')? @char = 'Y': @char ='X'
    end
  end
     

end 
 
 
  
 g1 = Game.new()
 g1.start()
 
 