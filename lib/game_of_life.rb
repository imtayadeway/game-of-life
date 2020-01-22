module GameOfLife
  class Game
    def initialize(board=nil)
      @board = board
    end

    def self.build(input)
      board = GameOfLife::Board.new(input)
      Game.new(board)
    end

    def tick
      @board = "| |"
    end

    def to_s
      @board.to_s
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

  class Hades
    def initialize(board)
    end

    def act
    end

    def board
      "| |"
    end

  end
end
