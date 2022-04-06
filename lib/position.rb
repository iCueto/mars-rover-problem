class Position
  attr_accessor :x, :y

  def initialize(x_value = 0, y_value = 0)
    @x = x_value
    @y = y_value
  end

  def to_s
    "#{@x} #{@y}"
  end
end
