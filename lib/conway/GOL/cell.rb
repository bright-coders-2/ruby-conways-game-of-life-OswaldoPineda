class Cell
    attr_accessor :alive, :value, :x, :y
    def initialize()
        @alive = false
        @value = "-"
    end

    def alive?
        @alive
    end

    def dead?
        !@alive
    end

    def die!
        @value = "-"
        @alive = false
    end

    def live!
        @value = "@"
        @alive = true
    end

end