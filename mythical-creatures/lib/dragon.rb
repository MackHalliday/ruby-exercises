class Dragon
  attr_reader :name, :color, :rider

  def initialize (name, color, rider, full = 0)
    @name = name
    @color = color
    @rider = rider
    @full = full
  end

  def hungry?
    if @full >= 3
      false
    else
      true
    end
  end

  def eat
    @full += 1
  end

  end
