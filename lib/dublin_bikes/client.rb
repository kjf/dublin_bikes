require 'dublin_bikes/connection'
require 'dublin_bikes/client/station'
require 'dublin_bikes/client/markers'

module DublinBikes
  class Client
    include DublinBikes::Connection
    include DublinBikes::Client::Station
    include DublinBikes::Client::Markers
  end
end
