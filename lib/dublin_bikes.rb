require 'dublin_bikes/version'
require 'dublin_bikes/client'
require 'dublin_bikes/api_marker_list'
require 'dublin_bikes/api_marker'
require 'dublin_bikes/api_station'

module DublinBikes
  class << self
    def new
      DublinBikes::Client.new
    end
  end
end
