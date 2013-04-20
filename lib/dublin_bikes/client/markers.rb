module DublinBikes
  class Client
    module Markers
      def marker_list
        @_marker_list ||= begin
          response = get('carto')
          payload = response.body
          DublinBikes::MarkerList.parse(payload, single: true)
        end
      end

      def markers
        marker_list.markers
      end

      def markers_closest_to(lat, lng)
        marker_list.closest_to(lat, lng)
      end
    end
  end
end
