require "spec_helper"

RSpec.describe GameOfLife::Game do

  # 1. Any live cell with two or three neighbors survives.
  # 2. Any dead cell with three live neighbors becomes a live cell.
  # 3. All other live cells die in the next generation. Similarly, all other dead cells stay dead.

  # Game
  # Game.build
  # Game.new
  # Game#run # can't test easily
  # Game#tick
  #   => generates the next "board"
  # Game#to_s

  # Board

  describe "#to_s" do
    it "renders the game in its current state" do
      game = described_class.build([[true]])

      expect(game.to_s).to eq("|x|")
    end

    it "renders the current state of the board" do
      board = double(GameOfLife::Board, to_s: "|x|")

      game = described_class.new(board)

      expect(game.to_s).to eq("|x|")
    end
  end

  describe "#tick" do
    it "populates the next generation of the board" do
      game = described_class.build([[true]])

      game.tick

      expect(game.to_s).to eq("| |")
    end
  end
end
