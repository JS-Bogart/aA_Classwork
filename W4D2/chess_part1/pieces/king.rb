require_relative "piece.rb"
require_relative "../modules/stepable.rb"

class King < Piece

  include Stepable

  def symbol
    if color == :white
      :♚
    else
      :♔
    end
  end

  def move_diffs
    [
      [1, 0],
      [0, 1],
      [-1, 0],
      [0, -1],
      [1, 1],
      [1, -1],
      [-1, 1],
      [-1, -1]
    ]
  end

  
end