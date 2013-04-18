require 'spec_helper'

describe DublinBikes do
  it "delegates to DublinBikes::Client" do
    DublinBikes.new.should be_a DublinBikes::Client
  end
end
