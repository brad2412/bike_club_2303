class BikeClub
  attr_reader :name,
              :bikers
  
  def initialize(name)
    @name = name
    @bikers = []
  end
  
  def add_bikers(biker)
    @bikers << biker
  end

  def most_rides(ride)
    max_rides = 0
    most_rides_biker = nil
    @bikers.each do |biker|
      rides = biker.get_ride_count(ride)
      if rides > max_rides
        max_rides = rides
        most_rides_biker = biker
      end
    end
    most_rides_biker
  end
end