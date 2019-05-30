require "dockingstation"

describe Dockingstation do
  it { is_expected.to respond_to :release_bike }

  it " creates an instance of the Bike class" do
    dockingstation = Dockingstation.new
    expect(dockingstation.release_bike).to be_a Bike
  end
  it "adds a bike to the dockingstation" do
    dockingstation = Dockingstation.new
    bike = Bike.new
    dockingstation.dock(bike)
    expect(dockingstation.dockingstationcontents).to include(bike)
  end
end
