require 'direction'

describe Direction do
  describe '#new' do
    it 'should return a new Direction object' do
      expect(subject).to be_a Direction
    end

    it 'should not return nil' do
      expect(subject).not_to be_nil
    end

    it 'should have a cardinal_point by default N' do
      expect(subject.cardinal_point).to eq 'N'
    end
  end

  describe '#to_s' do
    it 'should return the cardinal_point' do
      expect(subject.to_s).to eq 'N'
    end
  end

  describe '#turn_left' do
    context 'when cardinal_point is N' do
      let(:direction_north) { Direction.new 'N' }

      it 'should changes cardinal_point to W' do
        direction_north.turn_left

        expect(direction_north.cardinal_point).to eq 'W'
      end
    end

    context 'when cardinal_point is S' do
      let(:direction_south) { Direction.new 'S' }

      it 'should changes cardinal_point to E' do
        direction_south.turn_left
        expect(direction_south.cardinal_point).to eq 'E'
      end
    end

    context 'when cardinal_point is W' do
      let(:direction_west) { Direction.new 'W' }

      it 'should changes cardinal_point to S' do
        direction_west.turn_left
        expect(direction_west.cardinal_point).to eq 'S'
      end
    end

    context 'when cardinal_point is E' do
      let(:direction_east) { Direction.new 'E' }

      it 'should changes cardinal_point to N' do
        direction_east.turn_left
        expect(direction_east.cardinal_point).to eq 'N'
      end
    end
  end

  describe '#turn_right' do
    context 'when cardinal_point is N' do
      let(:direction_north) { Direction.new 'N' }

      it 'should changes cardinal_point to E' do
        direction_north.turn_right
        expect(direction_north.cardinal_point).to eq 'E'
      end
    end

    context 'when cardinal_point is S' do
      let(:direction_south) { Direction.new 'S' }

      it 'should changes cardinal_point to W' do
        direction_south.turn_right
        expect(direction_south.cardinal_point).to eq 'W'
      end
    end

    context 'when cardinal_point is W' do
      let(:direction_west) { Direction.new 'W' }

      it 'should changes cardinal_point to N' do
        direction_west.turn_right
        expect(direction_west.cardinal_point).to eq 'N'
      end
    end

    context 'when cardinal_point is E' do
      let(:direction_east) { Direction.new 'E' }

      it 'should changes cardinal_point to S' do
        direction_east.turn_right
        expect(direction_east.cardinal_point).to eq 'S'
      end
    end
  end
end
