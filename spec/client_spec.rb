require 'spec_helper'

describe DublinBikes::Client do
  before do
    stub_request(:get, /.*carto$/).
      to_return(body: File.open('spec/fixtures/markers.xml'))

    @client = DublinBikes::Client.new
  end

  it "delegates markers" do
    @client.markers.should be_a Array
  end

  it "delegates closest to" do
    @client.markers_closest_to(53.344304, -6.250427).first.should == @client.markers[9]
    @client.markers_closest_to(53.344304, -6.250427).last.should == @client.markers[20]
  end
end
