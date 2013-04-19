require 'happymapper'
require 'dublin_bikes/marker'

module DublinBikes
  class MarkerList
    include HappyMapper
    tag 'markers'
    has_many :markers, DublinBikes::Marker

    def closest_to(lat, lng)
      @markers.sort_by { |marker| marker.distance_to(lat, lng) }.first
    end
  end
end
