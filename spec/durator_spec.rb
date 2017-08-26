require 'spec_helper'
require 'durator'
require 'date'

RSpec.describe Durator do
  it 'initialize accepts two params as upper and lower limits' do
    # durator = Durator.new('A', 'B')
    # expect(durator.lower_limit).to eq('A');
    # expect(durator.upper_limit).to eq('B')
  end

  it 'validates inputs respond to Date format' do
    # expect respondto(Date?)
    # expect different format - to work?
  end

  it 'calculates duration between upper and lower limits in days' do
    # expect upper_limit > lower_limit
    # expect lower_limit > upper_limit
  end

  it 'calculates the number of weeks between upper and lower limits' do
    # expect /7
  end
end
