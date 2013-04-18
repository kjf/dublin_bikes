require 'faraday'

module DublinBikes
  module Connection
    def get(path)
      connection.get(path)
    end

    private

    def connection
      Faraday.new(url: 'http://www.dublinbikes.ie/service') do |faraday|
        faraday.adapter :net_http
      end
    end
  end
end
