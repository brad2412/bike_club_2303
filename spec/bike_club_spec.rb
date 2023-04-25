require './lib/ride'
require './lib/biker'
require './lib/bike_club'

RSpec.describe BikeClub do
  before(:each) do
    @bike_club = BikeClub.new('Bikes and Brews')
    @biker = Biker.new("Kenny", 30)
    @biker2 = Biker.new("Athena", 15)
    @ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
    @ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
    @ride3 = Ride.new({name: "Coconut Lake", distance: 32, loop: true, terrain: :gravel})
  end

  it 'exists and has attributes' do
    expect(@bike_club).to be_a(BikeClub)
    expect(@bike_club.name).to eq('Bikes and Brews')
    expect(@bike_club.bikers).to eq([])
  end
  
  it 'can add bikers' do
    @bike_club.add_bikers(@biker)
    @bike_club.add_bikers(@biker2)

    expect(@bike_club.bikers).to eq([@biker, @biker2])
  end

  it 'can show who logged the most rides' do
  @bike_club.add_bikers(@biker)
  @bike_club.add_bikers(@biker2)

  expect(@bike_club.bikers).to eq([@biker, @biker2])

  @biker.learn_terrain!(:gravel)
  @biker.learn_terrain!(:hills)

  @biker.log_ride(@ride1, 92.5)
  @biker.log_ride(@ride1, 91.1)
  @biker2.log_ride(@ride2, 60.9)
  @biker2.log_ride(@ride2, 61.6)

  @biker2.learn_terrain!(:gravel)
  @biker2.learn_terrain!(:hills)

  @biker2.log_ride(@ride1, 95.0)
  @biker2.log_ride(@ride2, 65.0)

  most_rides_biker = @bike_club.most_rides(@ride1)
  most_rides_biker = @bike_club.most_rides(@ride2)
  end
end