require_relative 'plane'

class Airport
attr_reader :plane
  
  def land_plane(plane)
    @plane = plane
  end

  def take_off
    @plane
  end
end
