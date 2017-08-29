require 'spec_helper'
require 'source'

RSpec.describe Source do
  it 'has default rule and people' do
    source = Source.new
    expect(source.rules.class).to be(Hash)
    expect(source.people.class).to be(Hash)
  end
end
