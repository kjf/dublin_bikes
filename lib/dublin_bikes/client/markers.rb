module DublinBikes
  class Client
    module Markers
      def markers
        response = get('carto')
        payload = response.body
        DublinBikes::MarkerList.parse(payload, single: true)
      end
    end
  end
end
