require 'happymapper'
require 'dublin_bikes/api_marker'

module DublinBikes
  class ApiMarkerList
    include HappyMapper
    tag 'markers'
    has_many :markers, DublinBikes::ApiMarker
  end
end
