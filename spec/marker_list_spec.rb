require 'spec_helper'

describe DublinBikes::MarkerList do
  before do
    @marker_list = DublinBikes::MarkerList.parse(File.open('spec/fixtures/markers.xml'),
      single: true)
  end

  it "has a list of markers" do
    @marker_list.markers.count.should == 44
  end
end
