$: << File.expand_path(File.join(File.dirname(__FILE__), 'lib'))

require 'dublin_bikes'
require 'pry'

db = DublinBikes.new
p db.stations
p db.stations_closest_to(53.344304, -6.250427)
p db.station_status 1
