require "spec_helper"

# Any live cell with two or three neighbors survives.
# Any dead cell with three live neighbors becomes a live cell.
# All other live cells die in the next generation. Similarly, all other dead cells stay dead.
#
# |x| | |
# | | | |
# | | | |

RSpec.describe GameOfLife::Game do
  describe ".seed" do
    context "with rows, columns, population = 10" do
      before { described_class.seed(10, 10, 10) }

      it "creates a board" do
        expect(described_class.board).to be_kind_of(Array)
        expect(described_class.board.size).to eq(10)
        expect(described_class.board[0]).to be_kind_of(Array)
        expect(described_class.board[0].size).to eq(10)
      end

      it "populates the board with 10" do
        population = 0

        for row in described_class.board
          for cell in row
            population+= 1 if cell.live
          end
        end

        expect(population).to eq(10)
      end
    end

    context "with rows, columns, population = 5" do
      before { described_class.seed(5, 5, 5) }

      it "creates a board" do
        expect(described_class.board).to be_kind_of(Array)
        expect(described_class.board.size).to eq(5)
        expect(described_class.board[0].size).to eq(5)
      end

      it "populates the board with 5" do
        expect(described_class.board.population).to eq(5)
      end
    end
  end

  describe ".step" do
    context "with a 10x10 board and 10 starting population" do
      before { described_glass.seed(10,10,10) }

      xit "any lonely cells with <2 neighbors dies" do
      end
    end
  end
end
