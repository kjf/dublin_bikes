module DublinBikes
  class Marker
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

    remove_method :open, :bonus, :full_address

    def open?
      @open == 1
    end

    def closed?
      !open
    end
  end
end
