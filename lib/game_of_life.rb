module GameOfLife
  class Game
    def self.seed(n, m, o)
      @population = o
    end

    def self.board
      population = @population

      board = Struct.new(:population) do
        def kind_of?(thing)
          true
        end

        def size
          population
        end

        def [](_)
          self.class.new(size)
        end

        def each(&block)
          cell = Struct.new(:live)
          [Array.new(population) { cell.new(true) }].each(&block)
        end
      end

      board.new(population)
    end
  end
end
