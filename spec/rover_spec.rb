require 'position'
require 'direction'
require 'rover'

describe Rover do
  subject { Rover.new(Position.new, Direction.new) }

  describe '#new' do
    it 'should return a new Rover object' do
      expect(subject).to be_a Rover
    end

    it 'should not return nil' do
      expect(subject).not_to be_nil
    end
  end

  describe '#to_s' do
    it 'should return the current coordinates' do
      expect(subject.to_s).to eq '0 0 N'
    end
  end

  describe '#turn_left' do
    it 'should change direction' do
      subject.turn_left

      expect(subject.direction.to_s).to eq 'W'
    end
  end

  describe '#turn_right' do
    it 'should change direction' do
      subject.turn_right

      expect(subject.direction.to_s).to eq 'E'
    end
  end

  describe '#move' do
    context 'when direction is N' do
      let(:position) { Position.new 2, 2 }
      let(:direction) { Direction.new 'N' }

      let!(:rover) { Rover.new position, direction }
      it 'should add 1 to position.y' do
        rover.move

        expect(rover.to_s).to eq '2 3 N'
      end
    end

    context 'when direction is S' do
      let(:position) { Position.new 2, 2 }
      let(:direction) { Direction.new 'S' }

      let(:rover) { Rover.new position, direction }
      it 'should substract 1 from position.y' do
        rover.move
        expect(rover.to_s).to eq '2 1 S'
      end
    end

    context 'when direction is E' do
      let(:position) { Position.new 2, 2 }
      let(:direction) { Direction.new 'E' }

      let(:rover) { Rover.new position, direction }
      it 'should add 1 to position.x' do
        rover.move
        expect(rover.to_s).to eq '3 2 E'
      end
    end

    context 'when direction is W' do
      let(:position) { Position.new 2, 2 }
      let(:direction) { Direction.new 'W' }

      let(:rover) { Rover.new position, direction }
      it 'should substract 1 from position.x' do
        rover.move
        expect(rover.to_s).to eq '1 2 W'
      end
    end
  end
end
