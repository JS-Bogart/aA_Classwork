require "rspec"
require "first_tdd_project"

describe 'Array#my_uniq' do

    #want to test if my_uniq doesn't use Array#uniq

    it "removes duplicates from an array" do
        expect([1, 2, 1, 3, 3].my_uniq.length).to eq(3)
    end

    it "returns the unique elements in the order in which they first appeared" do
        expect([7, 7, 8, 8, 9, 9, 9, 0].my_uniq).to eq([7, 8, 9, 0])
    end

end

describe 'Array#two_sum' do

    it "finds all pairs of positions where the elements at those positions sum to zero" do
        expect([-1, 0, 1].two_sum).to eq([[0, 2]])
    end

    it "returns the index pairs with the smaller index first" do
        expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end

end

describe "#my_transpose" do

    #want to test if my_transpose doesn't use Array#transpose

    let(:matrix) { [[0, 1, 2],[3, 4, 5],[6, 7, 8]] }

    it "returns a tranposed matrix" do
        expect(my_transpose(matrix)).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
    end

end

describe "#stock_picker" do
    let(:stock_prices) { [0, 99, 100] } 

    it "returns a pair of numbers" do
        expect(stock_picker(stock_prices).length).to eq(2)
    end

    it "returns an ordered pair of days" do
        expect(stock_picker(stock_prices)[0] < stock_picker(stock_prices)[1]).to eq(true)
    end

end

describe HanoiTowers do
    subject(:towers) { HanoiTowers.new(5) }

    describe "#initialize" do

        it "sets stacks to a 2D array with three subarrays" do
            expect(towers.stacks.length).to eq(3)
        end

        it "sets a specified number of stacks to the first subarray" do
            expect(towers.stacks[0]).to eq([1, 2, 3, 4, 5])
        end

    end

    describe "#move_disk" do
        it "takes the top disk from a stack" do
            
        end

        it "places the chosen disk on top of another stack"
    end


end
