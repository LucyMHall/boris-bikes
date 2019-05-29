require "dockingstation"

describe Dockingstation do
  it "releases bike" do
    expect(Dockingstation.new).to respond_to(:release_bike)
  end
end
