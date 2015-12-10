require 'rspec'

class ChangeMachine

  def change(cents)
    denominations = [25, 10, 5, 1]
    coins = []
    while cents > 0
      denominations.each do |denomination|
        if cents >= denomination
          cents -= denomination
          coins << denomination
        end
      end
    end

    coins
  end
end


RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return [1] when given 1' do
      machine = ChangeMachine.new
      expect(machine.change(1)).to eq([1])
    end

    it 'should return [1, 1] when given 2' do
      machine = ChangeMachine.new
      expect(machine.change(2)).to eq([1, 1])
    end

    it 'should return [5] when given 5' do
      machine = ChangeMachine.new
      expect(machine.change(5)).to eq([5])
    end

    it 'should return [5, 1] when given 6' do
      machine = ChangeMachine.new
      expect(machine.change(6)).to eq([5, 1])
    end

    it 'should return [10] when given 10' do
      machine = ChangeMachine.new
      expect(machine.change(10)).to eq([10])
    end

    it 'should return [25] when given 25' do
      machine = ChangeMachine.new
      expect(machine.change(25)).to eq([25])
    end
  end
end





require 'rspec'

class ChangeMachine

  def change(cents)
    coins = []
    while cents > 0
      if cents >= 10
        cents -= 10
        coins << 10
      elsif cents >= 5
        cents -= 5
        coins << 5
      else
        cents -= 1
        coins << 1
      end
    end
    coins
  end
end


require 'rspec'

class ChangeMachine

  def change(cents)
    coins = []
    while cents > 0
      if cents >= 10
        next_coin_to_be_dispensed = 10
      elsif cents >= 5
        next_coin_to_be_dispensed = 5
      else
        next_coin_to_be_dispensed = 1
      end
      cents -= next_coin_to_be_dispensed
      coins << next_coin_to_be_dispensed
    end
    coins
  end
end



require 'rspec'

class ChangeMachine

  def change(cents)
    denominations = [25, 10, 5, 1]
    coins = []
    while cents > 0
      denominations.each do |denomination|
        if cents >= denomination
          cents -= denomination
          coins << denomination
        end
      end
    end

    coins
  end
end