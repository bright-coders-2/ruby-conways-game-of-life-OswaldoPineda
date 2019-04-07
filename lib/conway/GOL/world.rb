
module Conway
    class World
        attr_accessor :rows, :cols, :cells, :cell_grid
        def initialize(rows=30, cols=110,user_cell_position=[])
            @rows = rows
            @cols = cols
            @cells = []
            @cell_grid =  Array.new(rows) do |row|
                            Array.new(cols) do |col|
                                cell = Conway::Cell.new(col, row)
                                cells << cell
                                cell
                            end
                        end
            @user_cell_position = user_cell_position
            create_cell(@user_cell_position)
        end
    
        def create_cell(user_cell_position)
          user_cell_position.each do |seed| 
            cell_grid[seed[0]][seed[1]].alive = true
          end
        end
        
        def neighbours_around_cell(cell)
            live_neighbours = 0
            if cell.y > 0
                candidate = cell_grid[cell.y - 1][cell.x] 
                candidate.alive? ? live_neighbours +=1 : '' 
            end
            if cell.y > 0 && cell.x < (cols - 1)
                candidate = cell_grid[cell.y - 1][cell.x + 1]
                candidate.alive? ? live_neighbours +=1 : '' 
            end
            if cell.x < (cols - 1)
                candidate = cell_grid[cell.y][cell.x + 1]
                candidate.alive? ? live_neighbours +=1 : '' 
            end
            if cell.y < (rows - 1) && cell.x < (cols - 1)
                candidate = cell_grid[cell.y + 1][cell.x + 1]
                candidate.alive? ? live_neighbours +=1 : '' 
            end
            if cell.y < (rows - 1)
                candidate = cell_grid[cell.y + 1][cell.x]
                candidate.alive? ? live_neighbours +=1 : '' 
            end
            if cell.y < (rows - 1) && cell.x > 0 
                candidate = cell_grid[cell.y + 1][cell.x - 1]
                candidate.alive? ? live_neighbours +=1 : '' 
            end
            if cell.x > 0
                candidate = cell_grid[cell.y][cell.x - 1]
                candidate.alive? ? live_neighbours +=1 : '' 
            end
            if cell.y > 0 && cell.x > 0
                candidate = cell_grid[cell.y - 1][cell.x - 1]
                candidate.alive? ? live_neighbours +=1 : '' 
            end
            live_neighbours
        end

        def random_generator_cell
          cells.each do |cell|
            cell.alive = [true, false].sample
          end
        end
    
    end
end
