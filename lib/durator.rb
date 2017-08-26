class Durator
  attr_accessor :upper_limit, :lower_limit
  def initialize(lower_limit, upper_limit)
    @lower_limit = lower_limit
    @upper_limit = upper_limit
  end

  def valid?
  end
end
