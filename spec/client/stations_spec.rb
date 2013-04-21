require 'spec_helper'

describe DublinBikes::Client::Stations do
  before do
    stub_request(:get, /.*carto$/).
      to_return(body: File.open('spec/fixtures/markers.xml'))

    @client = DublinBikes.new
  end

  it "gets a list of stations" do
    @client.stations.should be_a Array
    @client.stations.first.should be_a DublinBikes::Station
  end

  it "gets a list of stations closest to location" do
    @client.stations_closest_to(53.344304, -6.250427).should be_a Array
    @client.stations_closest_to(53.344304, -6.250427).first.id.should == 32
    @client.stations_closest_to(53.344304, -6.250427).last.id.should == 12
  end
end
