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
    def initialize(input)
      @board = ""
      populate(input)
    end

    def populate(input)
      for row in input
        @board.concat("\n|")
        for cell in row
          if cell
            @board.concat("x|")
          else
            @board.concat(" |")
          end
        end
      end
      @board.strip!
    end

    def to_s
      @board
    end
  end
end
