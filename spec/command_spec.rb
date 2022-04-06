require 'direction'
require 'position'
require 'rover'
require 'command'


describe Command do
  describe '#new' do
    it 'should return a new Command object' do
      expect(subject).to be_a Command
    end

    it 'should not return nil' do
      expect(subject).not_to be_nil
    end
  end

  describe '#call' do
    context 'when receive a String like that LML' do
      let(:position) { Position.new 3, 3 }
      let(:direction) { Direction.new }

      let(:rover) { Rover.new position, direction }

      let(:command) { Command.new rover }

      it 'should change rover initial coordinates' do
        command.call('LML')

        expect(rover.to_s).to eq '2 3 S'
      end
    end

    context 'when receive a String like that WQAS' do
      let(:position) { Position.new 3, 3 }
      let(:direction) { Direction.new }

      let(:rover) { Rover.new position, direction }

      let(:command) { Command.new rover }

      it 'should not change rover initial coordinates' do
        command.call('WQAS')

        expect(rover.to_s).to eq '3 3 N'
      end
    end

    context 'when receive a String like that WQMAS' do
      let(:position) { Position.new 3, 3 }
      let(:direction) { Direction.new }

      let(:rover) { Rover.new position, direction }

      let(:command) { Command.new rover }

      it 'should MOVE one time and ignore the rest of INPUT' do
        command.call('WQMAS')

        expect(rover.to_s).to eq '3 4 N'
      end
    end
  end
  
end
