require 'dublin_bikes/connection'
require 'dublin_bikes/client/stations'

module DublinBikes
  class Client
    include DublinBikes::Connection
    include DublinBikes::Client::Stations
  end
end
