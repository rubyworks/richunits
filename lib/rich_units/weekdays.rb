# = Weekdays
#
# The Weekdays class provides useful weekday terminology.

class Weekdays

  WEEKDAYS = 1..5 # Monday is wday 1
  ONE_DAY  = 60 * 60 * 24

  def initialize(n)
    @n = n
  end

  def ago(time = ::Time.now)
    step :down, time
  end
  alias_method :until, :ago
  alias_method :before, :ago

  def since(time = ::Time.now)
    step :up, time
  end
  alias_method :from_now, :since
  alias_method :after, :since

  private

  def step(direction, original_time)
    result = original_time
    time = ONE_DAY

    compare = direction == :up ? ">" : "<"
    time *= -1 if direction == :down

    @n.times do
      result += time until result.send(compare, original_time) && WEEKDAYS.member?(result.wday)
      original_time = result
    end
    result
  end
end

class Numeric

  # Works with day in terms of weekdays.
  def weekdays
    Weekdays.new(self)
  end

  alias_method :weekday, :weekdays

end

