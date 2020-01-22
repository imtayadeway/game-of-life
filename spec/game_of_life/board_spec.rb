require "spec_helper"

RSpec.describe GameOfLife::Board do
  describe "#to_s" do
    it "renders a live cell" do
      board = described_class.new([[true]])

      expect(board.to_s).to eq("|x|")
    end

    it "renders a dead cell" do
      board = described_class.new([[false]])

      expect(board.to_s).to eq("| |")
    end

    it "renders both a live and a dead cell" do
      board = described_class.new([[true, false]])

      expect(board.to_s).to eq("|x| |")
    end

    it "renders a board with multiple rows and columns" do
      board = described_class.new([[true, false],
                                   [false, true]])

      expected = <<~EOS.strip
        |x| |
        | |x|
      EOS
      expect(board.to_s).to eq(expected)
    end

    it "renders a 10x10 board" do
      board = described_class.new(Array.new(10) { Array.new(10) { true }})

      expected = <<~EOS.strip
        |x|x|x|x|x|x|x|x|x|x|
        |x|x|x|x|x|x|x|x|x|x|
        |x|x|x|x|x|x|x|x|x|x|
        |x|x|x|x|x|x|x|x|x|x|
        |x|x|x|x|x|x|x|x|x|x|
        |x|x|x|x|x|x|x|x|x|x|
        |x|x|x|x|x|x|x|x|x|x|
        |x|x|x|x|x|x|x|x|x|x|
        |x|x|x|x|x|x|x|x|x|x|
        |x|x|x|x|x|x|x|x|x|x|
      EOS
      expect(board.to_s).to eq(expected)
    end
  end
end
