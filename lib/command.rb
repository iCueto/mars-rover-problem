class Command
  attr_reader :rover

  def initialize(rover = Rover.new)
    @rover = rover
  end

  def call(instructions)
    instructions.each_char do |command|
      process_cmd(command)
    end
  end

  private

  def process_cmd(command)
    case command
    when 'L'
      @rover.turn_left
    when 'R'
      @rover.turn_right
    when 'M'
      @rover.move
    end
  end
end