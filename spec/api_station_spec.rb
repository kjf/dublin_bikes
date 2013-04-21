require 'spec_helper'

describe DublinBikes::ApiStation do
  before do
    @station = DublinBikes::ApiStation.parse(File.open('spec/fixtures/station.xml'))
  end

  it "has bikes available" do
    @station.bikes_available?.should be_true
  end

  it "allows for a ticket" do
    @station.ticket?.should be_true
  end

  it "has a total number of bikes" do
    @station.total_bikes.should == 29
  end

  it "has a number of free spaces" do
    @station.free_spaces.should == 26
  end

  it "is open" do
    @station.open?.should be_true
  end

  it "has an updated at time" do
    @station.updated_at.should be_a Time
  end
end
