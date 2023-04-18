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
        if @grid[start_pos].empty?
            raise "no piece to move"
        end 

        if !@grid[end_pos].empty?
            raise "pos already occupied"
        end 

        @grid[end_pos] = @grid[start_pos]
        @grid[start_pos] = nil 

    end 



end 