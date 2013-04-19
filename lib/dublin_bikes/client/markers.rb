module DublinBikes
  class Client
    module Markers
      def marker_list
        response = get('carto')
        payload = response.body
        DublinBikes::MarkerList.parse(payload, single: true)
      end
    end
  end
end
