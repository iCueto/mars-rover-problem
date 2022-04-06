class Direction
  attr_reader :cardinal_point

  def initialize(cardinal_point = 'N')
    @cardinal_point = cardinal_point
  end

  def turn_left
    case @cardinal_point
    when 'N'
      @cardinal_point = 'W'
    when 'S'
      @cardinal_point = 'E'
    when 'W'
      @cardinal_point = 'S'
    when 'E'
      @cardinal_point = 'N'
    end
  end

  def turn_right
    case @cardinal_point
    when 'N'
      @cardinal_point = 'E'
    when 'E'
      @cardinal_point = 'S'
    when 'S'
      @cardinal_point = 'W'
    when 'W'
      @cardinal_point = 'N'
    end
  end

  def to_s
    @cardinal_point
  end
end
