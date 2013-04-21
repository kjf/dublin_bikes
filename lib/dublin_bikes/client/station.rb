module DublinBikes
  class Client
    module Station
      def station(id)
        response = get("stationdetails/dublin/#{id}")
        payload = response.body
        DublinBikes::ApiStation.parse(payload)
      end
    end
  end
end
