module DublinBikes
  class Client
    module Stations
      def stations
        get('carto')
      end

      def station(id)
        get("stationdetails/dublin/#{id}")
      end
    end
  end
end
