class Biker
  attr_reader :name, :max_distance, :rides, :acceptable_terrain

  def initialize(name, max_distance)
    @name = name
    @max_distance = max_distance
    @rides = {}
    @acceptable_terrain = []
  end

  def learn_terrain!(terrain)
    @acceptable_terrain << terrain
  end

  def log_ride(ride, times)
    if ride.total_distance < @max_distance && @acceptable_terrain.include?(ride.terrain)
      @rides[ride] ||= []
      @rides[ride] << times
    end
  end

  def personal_record(ride)
    if @rides[ride].nil? 
      return false
    else
      return @rides[ride].min 
    end
  end

  def get_ride_count(ride) 
    @rides[ride].nil? ? 0 : @rides[ride].size
  end
end