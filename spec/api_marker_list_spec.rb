require 'spec_helper'

describe DublinBikes::ApiMarkerList do
  before do
    @marker_list = DublinBikes::ApiMarkerList.parse(File.open('spec/fixtures/markers.xml'),
      single: true)
  end

  it "has a list of markers" do
    @marker_list.markers.count.should == 44
  end

  it "lists stations in order of distance" do
    @marker_list.closest_to(53.344304, -6.250427).first.should == @marker_list.markers[9]
    @marker_list.closest_to(53.344304, -6.250427).last.should == @marker_list.markers[20]
  end
end
