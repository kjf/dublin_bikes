require 'spec_helper'

describe DublinBikes::StationStatus do
  before do
    station = DublinBikes::ApiStation.parse(File.open('spec/fixtures/station.xml'))
    @status = DublinBikes::StationStatus.new(station)
  end

  it "has available bikes" do
    @status.available_bikes.should == 3
  end

  it "accepts credit cards" do
    @status.accepts_credit_card?.should be_true
  end

  it "has a total capacity" do
    @status.total_capacity.should == 29
  end

  it "has a number of free spaces" do
    @status.free_spaces.should == 26
  end

  it "is open" do
    @status.open?.should be_true
  end

  it "is not closed" do
    @status.closed?.should be_false
  end

  it "has an updated at time" do
    @status.updated_at.should be_a Time
  end
end
