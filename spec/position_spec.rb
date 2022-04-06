require 'position'

describe Position do
  describe '#new' do
    it 'should return a new Position object' do
      expect(subject).to be_a Position
    end

    it 'should not return nil' do
      expect(subject).not_to be_nil
    end

    it 'should have a default coordinates x, y' do
      expect(subject.x).to eq 0
      expect(subject.y).to eq 0
    end
  end

  describe '#to_s' do
    it 'should return the coordinates x y' do
      expect(subject.to_s).to eq '0 0'
    end

    context 'when modify x or y values' do
      it 'should return new coordinates x y' do
        subject.x += 2
        subject.y += 3
        expect(subject.to_s).to eq '2 3'
      end
    end
  end
end
