require 'dublin_bikes/connection'
require 'dublin_bikes/client/stations'
require 'dublin_bikes/client/station_status'

module DublinBikes
  class Client
    include DublinBikes::Connection
    include DublinBikes::Client::Stations
    include DublinBikes::Client::StationStatus
  end
end
