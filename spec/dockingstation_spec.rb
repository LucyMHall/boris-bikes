require "dockingstation"

describe Dockingstation do
  it { is_expected.to respond_to :release_bike }

  it " creates an instance of the Bike class" do
    dockingstation = Dockingstation.new
    bike = Bike.new
    dockingstation.dock(bike)
    expect(dockingstation.release_bike).to be_a Bike
  end

  it "adds a bike to the dockingstation" do
    dockingstation = Dockingstation.new
    bike = Bike.new
    dockingstation.dock(bike)
    expect(dockingstation.dockingstationcontents).to include(bike)
  end

  it "can't release a bike if no bike exists" do
    dockingstation = Dockingstation.new
    expect{dockingstation.release_bike}.to raise_error("No bikes")
  end

  it "can't accept more bikes than it can hold (1 bike)" do
    dockingstation = Dockingstation.new
    bike = Bike.new
    dockingstation.dock(bike)
    bike2 = Bike.new
    expect{dockingstation.dock(bike2)}.to raise_error("Docking station full")
  end
end
