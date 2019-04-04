module Conway
    class Cell
        attr_accessor :alive, :mark, :x, :y
        def initialize(x,y)
          @alive = false
          @mark = "-".black
          @x = x
          @y = y
        end
    
        def alive?
          @alive
        end
    
        def dead?
          !@alive
        end
    
        def die!
        @mark = "-".black
          @alive = false
        end
    
        def live!
          @mark = "@".green
          @alive = true
        end
    
    end
end