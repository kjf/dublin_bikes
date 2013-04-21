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

    remove_method :total, :ticket, :available, :updated, :open, :free

    def bikes_available?
      @available > 0
    end

    def ticket?
      @ticket == 1
    end

    def open?
      @open == 1
    end

    def total_bikes
      @total
    end

    def free_spaces
      @free
    end

    def updated_at
      Time.at @updated
    end
  end
end
