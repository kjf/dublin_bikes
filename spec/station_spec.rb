require 'spec_helper'

describe DublinBikes::Station do
  before do
    marker_list = DublinBikes::ApiMarkerList.parse(File.open('spec/fixtures/markers.xml'),
      single: true)
    @marker = marker_list.markers.first
  end

  it "instantiates using via api_marker" do
    station = DublinBikes::Station.new(@marker)
    station.id.should == 25
    station.address.should == 'Merrion Square East'
    station.latitude.should == 53.339434
    station.longitude.should == -6.246548
  end
end
