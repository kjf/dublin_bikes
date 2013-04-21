require 'spec_helper'

describe DublinBikes::Client::Station do
  before do
    @client = DublinBikes.new
  end

  it "gets a single station" do
    stub_request(:get, /.*stationdetails\/dublin.*/).
      to_return(body: File.open('spec/fixtures/station.xml'))

    @client.station(1).should be_a DublinBikes::ApiStation
  end
end
