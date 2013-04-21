module DublinBikes
  class StationStatus
    attr_reader :available_bikes, :free_spaces, :total_capacity, :updated_at

    def initialize(station)
      @available_bikes = station.available
      @free_spaces = station.free
      @total_capacity = station.total
      @open = station.open == 1 ? true : false
      @accepts_credit_card = station.ticket == 1 ? true : false
      @updated_at = Time.at(station.updated)
    end

    def open?
      @open
    end

    def closed?
      !open?
    end

    def accepts_credit_card?
      @accepts_credit_card
    end
  end
end
