class Rover
  attr_reader :position, :direction

  def initialize(initial_position = Position.new, initial_direction = Direction.new)
    @position = initial_position
    @direction = initial_direction
  end

  def turn_left
    @direction.turn_left
  end

  def turn_right
    @direction.turn_right
  end

  def move
    case @direction.to_s
    when 'N'
      @position.y += 1
    when 'S'
      @position.y -= 1
    when 'E'
      @position.x += 1
    when 'W'
      @position.x -= 1
    end
  end

  def to_s
    "#{@position} #{@direction}"
  end
end
