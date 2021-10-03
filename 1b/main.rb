class Bicycle
  # ...
end

class RedBicycle < Bicycle

  AMOUNT_TO_LOWER_WEIGHT_BY = 10

  def initialize(height, weight, color)
    @height = height
    @weight = weight
    @color = color
  end

  def color
    @color
  end

  def height
    @height
  end

  def decrease_weight_by_AMOUNT
    @weight -= AMOUNT_TO_LOWER_WEIGHT_BY
  end
end
