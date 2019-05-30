require_relative "bike"

class Dockingstation
attr_reader :dockingstationcontents

  def initialize
    @dockingstationcontents = []
  end

  def release_bike
    if @dockingstationcontents.empty?
      raise"No bikes"
    else
      Bike.new
    end
  end

  def dock(bike)
    raise"Docking station full" if (!@dockingstationcontents.empty?)
    @dockingstationcontents << bike
  end


end
