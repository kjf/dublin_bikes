require 'spec_helper'

describe DublinBikes::Marker do
  before do
    @marker_list = DublinBikes::MarkerList.parse(File.open('spec/fixtures/markers.xml'),
      single: true)
  end

  it "is open" do
    open_marker = @marker_list.markers[0]
    open_marker.open? == true
  end

  it "is closed" do
    open_marker = @marker_list.markers[1]
    open_marker.closed? == false
  end
end
