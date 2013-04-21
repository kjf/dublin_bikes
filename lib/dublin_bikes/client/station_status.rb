module DublinBikes
  class Client
    module StationStatus
      def station_status(id)
        response = get("stationdetails/dublin/#{id}")
        payload = response.body
        station = DublinBikes::ApiStation.parse(payload)
        status = DublinBikes::StationStatus.new(station)
      end
    end
  end
end
