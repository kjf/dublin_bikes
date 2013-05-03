# DublinBikes

A simple ruby wrapper around the (unofficial) dublin bikes api

## Installation

Add this line to your application's Gemfile:

    gem 'dublin_bikes'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dublin_bikes

## Usage

```ruby

# instantiate the client
db = DublinBikes.new

# get a list of stations
db.stations

# get a list of stations ordered by location
db.stations_closest_to(53.344304, -6.250427)

# check the status of a particular station by passing in its id
db.station_status(1)
#<DublinBikes::StationStatus:0x007fb98d841ab8 @available_bikes=1, @free_spaces=19, @total_capacity=20, @open=true, @accepts_credit_card=false, @updated_at=2013-05-03 19:12:04 +0100>

```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
