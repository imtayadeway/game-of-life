module GameOfLife
  class Game
    def initialize(board=nil)
      @val = "|x|"
    end

    def self.build(x)
      Game.new()
    end

    def tick
      @val = "| |"
    end

    def to_s
      @val
    end

  end

  class Board
  end
end
