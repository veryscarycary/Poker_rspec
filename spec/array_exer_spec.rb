require "rspec"
require "array_exer"

describe Array do
  subject(:numbers) { [-2,2,3] }

  describe "#my_uniq" do
    it "returns a unique array" do
      expect(numbers.my_uniq).to eq(numbers.uniq)
    end

    it "doesn't use default uniq method" do
      expect(numbers).to_not receive(:uniq)
      numbers.my_uniq
    end

  end

  describe("#two_sum") do
    it "finds all pairs of positions that sum to zero" do
      expect(numbers.two_sum).to eq([[0,1]])
    end
  end
end

describe "#my_transpose" do
  subject(:matrix) { [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]] }

  it "converts rows into columns and columns into rows" do
    expect(my_transpose(matrix)).to eq([[0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]])
  end
end


describe "#stock_picker" do
  subject(:stocks) { [3.21, 4.21, 5.21, 2.21, 4, 21]}

  it "choses the best days to buy and sell stock" do
    expect(stock_picker(stocks)).to eq([4,5])
  end

  it "return an array" do
    expect(stock_picker(stocks)).to be_a(Array)
  end

end

describe TowersOfHanoi do
  subject(:tower) { TowersOfHanoi.new }

  describe "#won?" do
    it "checks that two indexes are empty including index 0" do
        tower.move(0,2)
        tower.move(0,1)
        tower.move(2,1)
        tower.move(0,2)
        tower.move(1,0)
        tower.move(1,2)
        tower.move(0,2)

        expect(tower.towers).to eq([[],[], [3, 2, 1]])
    end
  end


  describe "#move" do
    it "checks if the registered move appears in the towers array" do
      tower.move(0,2)
      expect(tower.towers).to eq([[3,2], [], [1]])
    end
  end
end
