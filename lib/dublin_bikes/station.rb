require 'happymapper'

module DublinBikes
  class Station
    include HappyMapper
    tag 'station'
    element :available, String
    element :free, Integer
    element :total, Integer
    element :ticket, Integer
    element :open, Integer
    element :updated, Integer
    element :connected, Integer
  end
end
