
module Slideable 
    HORIZONTAL_DIRS = [[1, 0], [-1, 0], [0, 1], [0, -1]]
    DIAGONAL_DIRS = [[1, 1], [1, -1], [-1, -1], [-1, 1]]

    def horizontal_dirs
        HORIZONTAL_DIRS
    end 

    def diagonal_dirs
        DIAGONAL_DIRS
    end 

    def moves 
        potential_pos = []
        directions = self.move_dirs

        directions.each do |dir|
            grow_unblocked_moves_in_dir(dir)
        end 


    end

    private 

    # def move_dirs
    # end 

    def grow_unblocked_moves_in_dir(dir)
        potential_pos << self.pos + dir until @grid[self.pos] != nil
    end 


end 