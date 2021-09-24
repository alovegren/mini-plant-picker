class Plant

  attr_reader :bloom_color, :bloom_time, :communities, :height, :moisture_level, :name, :scientific_name, :sun_level

  def initialize(*communities, **plant_info)
    @communities = communities
    @bloom_color = plant_info[:bloom_color]
    @bloom_time = plant_info[:bloom_time]
    @height = plant_info[:height]
    @moisture_level = plant_info[:moisture_level]
    @sun_level = plant_info[:sun_level]
    @name = plant_info[:name]
    @scientific_name = plant_info[:scientific_name]
  end

  def bloom_info
    [bloom_time, bloom_color]
  end

  def found_in?(community)
    communities.include?(community)
  end

  def names
    [name, scientific_name]
  end

  def needs
    [moisture_level, sun_level]
  end

end
