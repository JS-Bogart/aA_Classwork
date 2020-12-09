class Piece

    def initialize(color, board, pos)
        raise 'Invalid position' if !board.valid_pos?(pos)
        @color = color
        @board = board
        @pos = pos
        @board.add_piece(self, @pos)
    end

end