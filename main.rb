$: << File.expand_path(File.join(File.dirname(__FILE__), 'lib'))

require 'dublin_bikes'

db = DublinBikes.new
p db.marker_list
p db.station(1)
