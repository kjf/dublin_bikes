require 'spec_helper'

describe DublinBikes::Client::Markers do
  before do
    @client = DublinBikes.new
  end

  it "gets a list of markers" do
    stub_request(:get, /.*carto$/).
      to_return(body: File.open('spec/fixtures/markers.xml'))

    @client.markers.should be_a DublinBikes::MarkerList
  end
end
