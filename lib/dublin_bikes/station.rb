module DublinBikes
  class Station
    attr_reader :id, :address, :latitude, :longitude

    def initialize(marker)
      @id = marker.number
      @address = marker.address
      @latitude = marker.lat
      @longitude = marker.lng
    end

    def distance_to(m_lat, m_lng)
      d_lat = (@latitude - m_lat).to_rad
      d_lng = (@longitude - m_lng).to_rad

      a = Math.sin(d_lat / 2) * Math.sin(d_lat / 2) +
        Math.cos(m_lat.to_rad) * Math.cos(@latitude.to_rad) *
        Math.sin(d_lng / 2) * Math.sin(d_lng / 2)

      c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a))

      6371 * c
    end
  end
end

class Numeric
  def to_rad
    self * Math::PI / 180
  end
end
