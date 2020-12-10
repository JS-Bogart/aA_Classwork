require_relative "pieces/piece.rb"
require_relative "pieces/null.rb"

class Board

    attr_accessor :rows

    def initialize
        @null = NullPiece.instance
        @rows = Array.new(8) { Array.new(8, @null)}
    end
    
    def move_piece(start_pos, end_pos)
        raise "Empty start position" if empty?(start_pos)
        raise "That is not a valid move" if !valid_pos?(start_pos) || !valid_pos?(end_pos)
        raise "That is not a valid move" if !empty?(end_pos)
        piece = self[start_pos]
        piece.pos = end_pos
        self[end_pos] = piece
        self[start_pos] = nil
    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, piece)
        row, col = pos
        @rows[row][col] = piece
    end

    def empty?(pos)
        self[pos] == nil
    end

    def valid_pos?(pos)
        row, col = pos
        return false if row < 0 || row > 7
        return false if col < 0 || col > 7
        true
    end

    def add_piece(color, pos)
        piece = Piece.new(color, self, pos)
        raise "Not empty" if !empty?(pos)
        self[pos] = piece
    end
end