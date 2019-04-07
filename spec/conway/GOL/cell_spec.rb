require "../../spec_helper"

RSpec.describe Conway::Cell do
    let (:cell) {Conway::Cell.new(0,0)}

    describe "#Initialize" do
        it "should be the value x of instance" do
            expect(cell.x).to eq(0)
        end
        it "should be the value y of instance" do
            expect(cell.y).to eq(0)
        end
        it "should be dead" do
            expect(cell.alive).not_to eq(true)
        end
    end

    describe "#alive?" do
        it "check if cell is live" do
            expect(cell.alive?).to eq(false)
        end
    end

    describe '#dead?' do
        it "check if cell is dead" do
            expect(cell.dead?).to eq(true)
        end
    end

    describe '#live!' do
      it 'change the alive status to true' do
          cell.live!
          expect(cell.alive).to eq(true)
      end
    end

    describe '#die!' do
        it 'change the alive status to false' do
            cell.die!
            expect(cell.alive).to eq(false)
        end
    end

end