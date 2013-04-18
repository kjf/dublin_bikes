require 'happymapper'
require 'dublin_bikes/marker'

module DublinBikes
  class MarkerList
    include HappyMapper
    tag 'markers'
    has_many :markers, DublinBikes::Marker
  end
end
