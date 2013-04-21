require 'happymapper'

module DublinBikes
  class ApiStation
    include HappyMapper
    tag 'station'
    element :available, Integer
    element :free, Integer
    element :total, Integer
    element :ticket, Integer
    element :open, Integer
    element :updated, Integer
    element :connected, Integer
  end
end
