require_relative "bike"

class Dockingstation
attr_reader :dockingstationcontents

  def release_bike
     Bike.new
  end

  def dock(bike)
    @dockingstationcontents = []
    @dockingstationcontents << bike
  end


end
