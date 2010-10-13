require 'richunits/duration'

describe RichUnits::Duration do

  it "to_a" do
    d = RichUnits::Duration.new(24*60*60 + 1)
    r = d.to_a
    x = [1, 0, 0, 1]
    r.should == x

    d = RichUnits::Duration.new(10*24*60*60 + 5)
    r = d.to_a
    x = [10, 0, 0, 5]
    r.should == x
  end

  it "segmented" do
    d = RichUnits::Duration.new(8*24*60*60 + 1)
    r = d.segmented(:week, :day, :hour, :minute, :second)
    x = [1, 1, 0, 0, 1]
    r.to_a.should == x
  end

  it "to_h" do
    d = RichUnits::Duration.new(24*60*60)
    r = d.to_h
    x = { :days=>1, :hours=>0, :minutes=>0, :seconds=>0 }
    r.should == x
  end

  it "repeated_numeric_days" do
    a = 10.days
    r = 10.days.days
    x = 10
    r.should == x
  end

  it "repeated_numeric_years" do
    a = 10.years
    r = 10.years.years
    x = 10
    r.should == x
  end

  it "repeated_strftime" do
    a = RichUnits::Duration[24*60*60 + 1]
    r = a.strftime('%d:%h:%m:%s')
    x = "1:0:0:1"
    r.should == x
  end

end

