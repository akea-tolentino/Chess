require_relative "piece"

class Board 
    attr_reader :grid, :null_piece
    def initialize
        @grid = Array.new(8) {Array.new(8)}
        @grid[0].map! {|piece| Piece.new("rook")}
        @grid[1].map! {|piece| Piece.new("rook")}
        @grid[6].map! {|piece| Piece.new("rook")}
        @grid[7].map! {|piece| Piece.new("rook")}
        @grid 
    end

    def [](pos)
        row, col = pos 
        @grid[row][col]
    end 

    def []=(pos, symbol)
        row, col = pos 
        @grid[row][col] = symbol
    end 
    
    def move_piece(start_pos, end_pos)
        if self[start_pos] == nil
            raise "no piece to move"
        end 

        if !self[end_pos] == nil
            raise "pos already occupied"
        end 

        self[end_pos] = self[start_pos]
        self[start_pos] = nil 

    end 

end 