require "spec_helper"

RSpec.describe GameOfLife::Hades do
  # 1. Any live cell with two or three neighbors survives.
  # 2. Any dead cell with three live neighbors becomes a live cell.
  # 3. All other live cells die in the next generation. Similarly, all other dead cells stay dead.

  specify "a live cell with no neighbors will die" do
    board = GameOfLife::Board.new([[true]])
    hades = described_class.new(board)

    hades.act

    expect(hades.board.to_s).to eq("| |")
  end
end
