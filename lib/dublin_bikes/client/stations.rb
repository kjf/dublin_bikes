module DublinBikes
  class Client
    module Stations
      def stations
        @_stations ||= begin
          response = get('carto')
          payload = response.body
          marker_list = DublinBikes::ApiMarkerList.parse(payload, single: true)
          marker_list.markers.map do |marker|
            DublinBikes::Station.new(marker)
          end
        end
      end

      def stations_closest_to(lat, lng)
        stations.sort_by { |station| station.distance_to(lat, lng) }
      end
    end
  end
end
