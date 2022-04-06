require './lib/position'
require './lib/direction'
require './lib/rover'
require './lib/command'

test_cases = File.readlines('input.test', chomp: true)

test_cases[1..-1].each_slice(2) do |inputs|
  position = Position.new *inputs[0].split[0..1].map(&:to_i)
  direction = Direction.new inputs[0].split[2]
  rover = Rover.new position, direction

  command = Command.new rover

  command.call(inputs[1])

  puts rover
end
