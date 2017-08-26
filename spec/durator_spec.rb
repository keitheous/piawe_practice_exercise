require 'spec_helper'
require 'durator'

RSpec.describe Durator do
  it 'returns true' do
    expect(Durator.val).to be(true)
  end
end
