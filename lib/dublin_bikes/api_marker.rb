module DublinBikes
  class ApiMarker
    include HappyMapper
    tag 'marker'
    attribute :name, String
    attribute :number, Integer
    attribute :address, String
    attribute :full_address, String, tag: 'fullAddress'
    attribute :lat, Float
    attribute :lng, Float
    attribute :open, Integer
    attribute :bonus, Integer

    remove_method :open, :bonus, :full_address, :number

    def open?
      @open == 1
    end

    def closed?
      !open?
    end

    def id
      @number
    end

    def distance_to(m_lat, m_lng)
      d_lat = (@lat - m_lat).to_rad
      d_lng = (@lng - m_lng).to_rad

      a = Math.sin(d_lat / 2) * Math.sin(d_lat / 2) +
        Math.cos(m_lat.to_rad) * Math.cos(@lat.to_rad) *
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
