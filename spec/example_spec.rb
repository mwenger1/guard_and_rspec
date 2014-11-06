require 'spec_helper'

describe 'RSpecGreeter' do
  it 'RSpecGreeter#greet()' do
  	# binding.pry
    greeter  = RSpecGreeter.new         # Given
    greeting = greeter.greet
    # binding.pry            # When
    greeting.should eq('Hello RSpec! bro')  # Then
  end
end


describe Calculator do
  describe '#add' do
    it 'returns the sum of its arguments' do
      expect(Calculator.new.add(1, 2)).to eq(3)
    end
  end
end


describe Order do
  it "sums the prices of the items in its line items" do
    order = Order.new
    order.add_entry(LineItem.new(
      :item => Item.new(
        :price => Money.new(
          1.11, :USD))))
    order.add_entry(LineItem.new(
      :item => Item.new(
        :price => Money.new(2.22, :USD),
        :quantity => 2
    )))
    expect(order.total).to eq(Money.new(5.55, :USD))
  end
end

