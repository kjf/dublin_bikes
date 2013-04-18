require 'dublin_bikes/version'
require 'dublin_bikes/client'

module DublinBikes
  class << self
    def new
      DublinBikes::Client.new
    end
  end
end
