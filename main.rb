$: << File.expand_path(File.join(File.dirname(__FILE__), 'lib'))

require 'dublin_bikes'
require 'pry'

db = DublinBikes.new
db.stations
db.stations.first.status
