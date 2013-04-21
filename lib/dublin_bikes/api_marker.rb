module DublinBikes
  class ApiMarker
    include HappyMapper
    tag 'marker'
    attribute :name, String
    attribute :number, Integer
    attribute :address, String
    attribute :full_address, String, tag: 'fullAddress'
    attribute :lat, Float
    attribute :lng, Float
    attribute :open, Integer
    attribute :bonus, Integer
  end
end
