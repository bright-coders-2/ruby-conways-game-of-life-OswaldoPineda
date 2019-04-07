module Conway
    class Game
      attr_accessor :world
        def initialize (world = Conway::World.new)
            @world = world
        end 

        def start
          @world.random_generator_cell
          loop do
              rules
              print_board
              puts `clear`
          end
        end
    
        def print_board
            @world.cell_grid.each_index do |i|
                sub_array = @world.cell_grid[i]
                sub_array.each_index do |x|
                    print @world.cell_grid[i][x].mark
                end
                puts
            end
        end

        def rules
            live = []
            die = []
            @world.cells.each do |cell|
                cell.alive? && @world.neighbours_around_cell(cell) < 2 ? die << cell : ''
                cell.alive? && @world.neighbours_around_cell(cell) > 3 ? die << cell : ''
                cell.dead? && @world.neighbours_around_cell(cell) == 3 ? live << cell : ''
            end
            die.each { |c| c.die! }
            live.each { |c| c.live! }
        end
    end
end