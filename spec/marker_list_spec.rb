require 'spec_helper'

describe DublinBikes::MarkerList do
  before do
    @marker_list = DublinBikes::MarkerList.parse(File.open('spec/fixtures/markers.xml'),
      single: true)
  end

  it "has a list of markers" do
    @marker_list.markers.count.should == 44
  end

  it "finds the closest station" do
    @marker_list.closest_to(53.344304, -6.250427).should == @marker_list.markers[9]
  end
end
