$: << File.expand_path(File.join(File.dirname(__FILE__), 'lib'))

require 'dublin_bikes'

db = DublinBikes.new
p db.markers
p db.station(1)

# l = Location.new(lat, lng)
# db.closest_station(l)
# s = db.stations[0]
# s.size
# s.available
# s.unavailable
# s.open
# s.connected
# s.updated_at
