require 'json'

class Source
  attr_accessor :people, :rules
  def initialize(people = './sources/people.json', rules = './sources/people.json')
    @people = JSON.parse(File.read(people))
    @rules = JSON.parse(File.read(rules))
  end
end
