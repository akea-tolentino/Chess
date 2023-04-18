require_relative "board"

class Piece

    include Slideable

    attr_reader :pos, :color, :board
    def initialize(color, board, pos = nil)
        @pos = pos
        @color = color 
        @board = Board
    end 

    def to_s

    end 

    def empty?
        @pos.empty?
    end 

    def valid_moves
    end 

    def pos=(val)
        @pos = val
    end 
    
    def Symbol
        @color 
    end 

    private 

    def move_into_check(end_pos)
    end 
end 
