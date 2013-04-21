require 'happymapper'
require 'dublin_bikes/api_marker'

module DublinBikes
  class ApiMarkerList
    include HappyMapper
    tag 'markers'
    has_many :markers, DublinBikes::ApiMarker

    def closest_to(lat, lng)
      @markers.sort_by { |marker| marker.distance_to(lat, lng) }
    end
  end
end
