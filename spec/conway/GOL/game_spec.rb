require "../../spec_helper"

RSpec.describe Conway::Game do

  describe "#rules" do

    context 'rule 1: Any live cell with fewer than two live neighbours dies' do
      it "kill a cell with 0 neighbours" do
        world = Conway::World.new(30,100,[[0,1]])
        game = Conway::Game.new(world)
        expect(world.neighbours_around_cell(world.cell_grid[0][1])).to eq(0)
        game.rules
        expect(world.cell_grid[0][1].alive).to eq(false)
      end
      it "kill cell with 1 live neighbour" do
        world = Conway::World.new(30,100, [[1,1],[2,1]])
        game = Conway::Game.new(world)
        expect(world.neighbours_around_cell(world.cell_grid[0][1])).to eq(1)
        game.rules
        expect(world.cell_grid[0][1].alive).to eq(false)
        expect(world.cell_grid[0][2].alive).to eq(false)
      end
    end
    
    context 'rule 2: Any live cell with two or three live neighbours lives' do
      it "keep cell with 2 live neighbours alive" do
        world = Conway::World.new(30,100,[[1,1],[2,1],[1,2]])
        game = Conway::Game.new(world)
        expect(world.neighbours_around_cell(world.cell_grid[1][1])).to eq(2)
        game.rules
        expect(world.cell_grid[1][1].alive).to eq(true)
      end

      it "keep cell with 3 live neighbours alive" do
        world = Conway::World.new(30,100,[[1,0],[1,1],[2,0],[0,1]])
        game = Conway::Game.new(world)
        expect(world.neighbours_around_cell(world.cell_grid[1][1])).to eq(3)
        game.rules
        expect(world.cell_grid[1][1].alive).to eq(true)
      end
    end

    context 'rule 3: Any live cell with more than three live neighbours dies' do
      it "kill cell with 4 live neighbours" do
        world = Conway::World.new(30,100,[[0,0],[0,1],[0,2],[1,0],[1,1]])
        game = Conway::Game.new(world)
        expect(world.neighbours_around_cell(world.cell_grid[1][1])).to eq(4)
        game.rules
        expect(world.cell_grid[1][1].alive).to eq(false)
      end

      it "kill cell with 5 live neighbours" do
        world = Conway::World.new(30,100,[[0,0],[0,1],[0,2],[1,0],[1,1],[2,0]])
        game = Conway::Game.new(world)
        expect(world.neighbours_around_cell(world.cell_grid[1][1])).to eq(5)
        game.rules
        expect(world.cell_grid[1][1].alive).to eq(false)
      end

      it "kill cell with 6 live neighbours" do
        world = Conway::World.new(30,100,[[0,0],[0,1],[0,2],[1,0],[1,1],[2,0],[2,1]])
        game = Conway::Game.new(world)
        expect(world.neighbours_around_cell(world.cell_grid[1][1])).to eq(6)
        game.rules
        expect(world.cell_grid[1][1].alive).to eq(false)
      end

      it "kill cell with 7 live neighbours" do
        world = Conway::World.new(30,100,[[0,0],[0,1],[0,2],[1,0],[1,1],[2,0],[2,1],[2,2]])
        game = Conway::Game.new(world)
        expect(world.neighbours_around_cell(world.cell_grid[1][1])).to eq(7)
        game.rules
        expect(world.cell_grid[1][1].alive).to eq(false)
      end

      it "kill cell with 8 live neighbours" do
        world = Conway::World.new(30,100,[[0,0],[0,1],[0,2],[1,0],[1,1],[1,2],[2,0],[2,1],[2,2]])
        game = Conway::Game.new(world)
        expect(world.neighbours_around_cell(world.cell_grid[1][1])).to eq(8)
        game.rules
        expect(world.cell_grid[1][1].alive).to eq(false)
      end
    end

    context 'rule 4: Any dead cell with exactly three live neighbours becomes a live cell' do
      it "dead cell with 3 live neighbours to live" do
        world = Conway::World.new(30,100,[[1,0],[2,0],[0,1]])
        game = Conway::Game.new(world)
        expect(world.neighbours_around_cell(world.cell_grid[1][1])).to eq(3)
        game.rules
        expect(world.cell_grid[1][1].alive).to eq(true)
      end
    end
  
  end
end