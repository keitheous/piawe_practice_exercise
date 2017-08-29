require 'date'

class Durator
  attr_accessor :upper_limit, :lower_limit
  def initialize(lower_limit, upper_limit)
    @lower_limit = lower_limit if date_format?(lower_limit)
    @upper_limit = upper_limit if date_format?(upper_limit)
  end

  def weeks_apart
    days_apart = (Date.parse(@lower_limit).mjd - Date.parse(@upper_limit).mjd).abs + 1
    weeks_apart = days_apart / 7
  end

  def date_format?(input)
    true if Date.parse(input)
  rescue
    false
  end
end
