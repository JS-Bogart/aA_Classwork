require_relative "piece.rb"
require_relative "../modules/stepable.rb"
require_relative "../board.rb"
require "byebug"

class Knight < Piece
  include Stepable

  def symbol
    if color == :white
      :♞
    else
      :♘
    end
  end

  def move_diffs
    [
      [1, 2],
      [2, 1],
      [-1, -2],
      [-2, -1],
      [-1, 2],
      [1, -2],
      [2, -1],
      [-2, 1]
    ]
  end

  
end

board = Board.new
knight = Knight.new(:white, board, [1, 1])
p knight.moves
