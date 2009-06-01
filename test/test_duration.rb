require 'richunits/duration'
require 'test/unit'

class TestDuration < Test::Unit::TestCase

  def test_to_a
    d = RichUnits::Duration.new(24*60*60 + 1)
    r = d.to_a
    x = [1, 0, 0, 1]
    assert_equal(x, r)

    d = RichUnits::Duration.new(10*24*60*60 + 5)
    r = d.to_a
    x = [10, 0, 0, 5]
    assert_equal(x, r)
  end

  def test_segmented
    d = RichUnits::Duration.new(8*24*60*60 + 1)
    r = d.segmented(:week, :day, :hour, :minute, :second)
    x = [1, 1, 0, 0, 1]
    assert_equal(x, r.to_a)
  end

  def test_to_h
    d = RichUnits::Duration.new(24*60*60)
    r = d.to_h
    x = { :days=>1, :hours=>0, :minutes=>0, :seconds=>0 }
    assert_equal(x, r)
  end

  def test_repeated_numeric_days
    a = 10.days
    r = 10.days.days
    x = 10
    assert_equal(x,r)
  end

  def test_repeated_numeric_years
    a = 10.years
    r = 10.years.years
    x = 10
    assert_equal(x,r)
  end

  def test_repeated_strftime
    a = RichUnits::Duration[24*60*60 + 1]
    r = a.strftime('%d:%h:%m:%s')
    x = "1:0:0:1"
    assert_equal(x,r)
  end

end

