require 'dublin_bikes/version'
require 'dublin_bikes/client'
require 'dublin_bikes/marker_list'
require 'dublin_bikes/marker'
require 'dublin_bikes/station'

module DublinBikes
  class << self
    def new
      DublinBikes::Client.new
    end
  end
end
