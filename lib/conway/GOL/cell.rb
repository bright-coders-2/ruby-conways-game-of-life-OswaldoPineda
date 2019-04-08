module Conway
  class Cell
    attr_accessor :alive, :mark, :pos_x, :pos_y
    def initialize(pos_x, pos_y)
      @alive = false
      @mark = '-'.black
      @pos_x = pos_x
      @pos_y = pos_y
    end

    def alive?
      @alive
    end

    def dead?
      !@alive
    end

    def die!
      @mark = '-'.black
      @alive = false
    end

    def live!
      @mark = '@'.green
      @alive = true
    end
  end
end
