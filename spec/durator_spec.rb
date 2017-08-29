require 'spec_helper'
require 'durator'
require 'date'

RSpec.describe Durator do
  it 'initialize accepts 2 dates params' do
    invalid_durator = Durator.new('A', '3')
    valid_durator = Durator.new('1/2/2013', '2013/12/1')
    expect(invalid_durator.lower_limit).to eq(nil)
    expect(invalid_durator.upper_limit).to eq(nil)
    expect(valid_durator.lower_limit).to eq('1/2/2013')
    expect(valid_durator.upper_limit).to eq('2013/12/1')
  end

  it 'validates inputs respond to Date format' do
    skip
    # dont know how to do this
  end

  it 'calculates the number of weeks between upper and lower limits' do
    first_pair_dates= Durator.new('1/1/2013', '14/1/2013')
    second_pair_dates= Durator.new('1/1/2013', '26/1/2013')
    third_pair_dates = Durator.new('1/1/2013', '3/1/2013')
    expect(first_pair_dates.weeks_apart).to eq(2)
    expect(second_pair_dates.weeks_apart).to eq(3)
    expect(third_pair_dates.weeks_apart).to eq(0)
  end
end
