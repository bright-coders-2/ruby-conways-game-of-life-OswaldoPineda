require '../../spec_helper'

RSpec.describe Conway::Game do
  describe '#create_cell' do
    it 'gives life to a cell' do
      world = Conway::World.new(30, 100, [[1, 1]])
      expect(world.cell_grid[1][1].alive).to eq(true)
    end
  end

  describe '#neighbours_around_cell' do
    it 'cell with 1 live neighbour' do
      world = Conway::World.new(30, 100, [[1, 1], [2, 1]])
      expect(world.neighbours_around_cell(world.cell_grid[0][1])).to eq(1)
    end
    
    it 'cell with 2 live neighbour' do
      world = Conway::World.new(30, 100, [[1, 1], [2, 1], [1, 2]])
      expect(world.neighbours_around_cell(world.cell_grid[1][1])).to eq(2)
    end

    it 'cell with 3 live neighbour' do
      positions = [[1, 1], [2, 1], [1, 2], [2, 2]]
      world = Conway::World.new(30, 100, positions)
      expect(world.neighbours_around_cell(world.cell_grid[1][1])).to eq(3)
    end

    it 'cell with 4 live neighbour' do
      positions = [[1, 1], [2, 1], [1, 2], [2, 2], [0, 2]]
      world = Conway::World.new(30, 100, positions)
      expect(world.neighbours_around_cell(world.cell_grid[1][1])).to eq(4)
    end

    it 'cell with 5 live neighbour' do
      positions = [[1, 1], [2, 1], [1, 2], [2, 2], [0, 2], [0, 1]]
      world = Conway::World.new(30, 100, positions)
      expect(world.neighbours_around_cell(world.cell_grid[1][1])).to eq(5)
    end

    it 'cell with 6 live neighbour' do
      positions = [[1, 1], [2, 1], [1, 2], [2, 2], [0, 2], [0, 1], [1, 0]]
      world = Conway::World.new(30, 100, positions)
      expect(world.neighbours_around_cell(world.cell_grid[1][1])).to eq(6)
    end

    it 'cell with 7 live neighbour' do
      positions = [[1, 1], [2, 1], [1, 2], [2, 2], [0, 2], [0, 1], [1, 0], [2, 0]]
      world = Conway::World.new(30, 100, positions)
      expect(world.neighbours_around_cell(world.cell_grid[1][1])).to eq(7)
    end

    it 'cell with 8 live neighbour' do
      positions = [[1, 1], [2, 1], [1, 2], [2, 2], [0, 2], [0, 1], [1, 0], [2, 0], [0, 0]]
      world = Conway::World.new(30, 100, positions)
      expect(world.neighbours_around_cell(world.cell_grid[1][1])).to eq(8) 
    end
  end
end
