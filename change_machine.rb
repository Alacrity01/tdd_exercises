require 'rspec'

class ChangeMachine
  def coins(number)
    coin_list = []
    coins_array = [25, 10, 5, 1]

    until number == 0
      coins_array.each do |coin|
        while number - coin >= 0
          coin_list << coin
          number -= coin
        end
      end
    end

    coin_list
  end 
end

RSpec.describe ChangeMachine do
  describe '#change' do
    let(:change_machine) { ChangeMachine.new }

    it 'should return [1] if given 1' do
      expect(change_machine.coins(1)).to eq([1])
    end

    it 'should return [1, 1] if given 2' do
      expect(change_machine.coins(2)).to eq([1, 1])
    end

    it 'should return [1, 1, 1] if given 3' do
      expect(change_machine.coins(3)).to eq([1, 1, 1])
    end

    it 'should return [1, 1, 1, 1] if given 4' do
      expect(change_machine.coins(4)).to eq([1, 1, 1, 1])
    end

    it 'should return [5] if given 5' do
      expect(change_machine.coins(5)).to eq([5])
    end

    it 'should return [5, 1] if given 6' do
      expect(change_machine.coins(6)).to eq([5, 1])
    end

    it 'should return [5, 1, 1] if given 7' do
      expect(change_machine.coins(7)).to eq([5, 1, 1])
    end

    it 'should return [5, 1, 1, 1] if given 8' do
      expect(change_machine.coins(8)).to eq([5, 1, 1, 1])
    end

    it 'should return [5, 1, 1, 1, 1] if given 9' do
      expect(change_machine.coins(9)).to eq([5, 1, 1, 1, 1])
    end

    it 'should return [10] if given 10' do
      expect(change_machine.coins(10)).to eq([10])
    end

    it 'should return [10, 1] if given 11' do
      expect(change_machine.coins(11)).to eq([10, 1])
    end

    it 'should return [10, 1, 1] if given 12' do
      expect(change_machine.coins(12)).to eq([10, 1, 1])
    end

    it 'should return [10, 1, 1, 1] if given 13' do
      expect(change_machine.coins(13)).to eq([10, 1, 1, 1])
    end

    it 'should return [10, 1, 1, 1, 1] if given 14' do
      expect(change_machine.coins(14)).to eq([10, 1, 1, 1, 1])
    end

    it 'should return [10, 5] if given 15' do
      expect(change_machine.coins(15)).to eq([10, 5])
    end

    it 'should return [10, 5, 1] if given 16' do
      expect(change_machine.coins(16)).to eq([10, 5, 1])
    end

    it 'should return [10, 5, 1, 1] if given 17' do
      expect(change_machine.coins(17)).to eq([10, 5, 1, 1])
    end

    it 'should return [10, 5, 1, 1, 1] if given 18' do
      expect(change_machine.coins(18)).to eq([10, 5, 1, 1, 1])
    end

    it 'should return [10, 5, 1, 1, 1, 1] if given 19' do
      expect(change_machine.coins(19)).to eq([10, 5, 1, 1, 1, 1])
    end

    it 'should return [10, 10] if given 20' do
      expect(change_machine.coins(20)).to eq([10, 10])
    end

    it 'should return [10, 10, 1] if given 21' do
      expect(change_machine.coins(21)).to eq([10, 10, 1])
    end

    it 'should return [10, 10, 1, 1] if given 22' do
      expect(change_machine.coins(22)).to eq([10, 10, 1, 1])
    end

    it 'should return [10, 10, 1, 1, 1] if given 23' do
      expect(change_machine.coins(23)).to eq([10, 10, 1, 1, 1])
    end

    it 'should return [10, 10, 1, 1, 1, 1] if given 24' do
      expect(change_machine.coins(24)).to eq([10, 10, 1, 1, 1, 1])
    end

    it 'should return [25] if given 25' do
      expect(change_machine.coins(25)).to eq([25])
    end

    it 'should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] if given 119' do
      expect(change_machine.coins(119)).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
end