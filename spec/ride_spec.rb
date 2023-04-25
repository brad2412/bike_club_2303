require './lib/ride'

RSpec.describe Ride do
  before(:each) do
    @ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
    @ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
  end

  describe 'initialize' do
    it 'returns the name attribute' do
      expect(@ride1.name).to eq("Walnut Creek Trail")
      expect(@ride2.name).to eq("Town Lake")
    end
  end

  describe '#distance method' do
    it 'returns the distance attribute' do
      expect(@ride1.distance).to eq(10.7)
      expect(@ride2.distance).to eq(14.9)
    end
  end

  describe '#terrain method' do
    it 'returns the terrain attribute' do
      expect(@ride1.terrain).to eq(:hills)
      expect(@ride2.terrain).to eq(:gravel)
    end
  end

  describe '#loop? method' do
    it 'returns true if the ride is a loop' do
      expect(@ride1.loop?).to be(false)
      expect(@ride2.loop?).to be(true)
    end
  end

  describe '#total_distance method' do
    it 'returns the total distance of the ride' do
      expect(@ride1.total_distance).to eq(21.4)
      expect(@ride2.total_distance).to eq(14.9)
    end
  end
end

