require 'richunits/times'

describe "RichUnits::Times" do

  #it "micro_seconds
  #  1.microsecond.should == 0.000001
  #end

  #it "milli_seconds
  #  1.millisecond.should == 0.001
  #end

  it "seconds" do
    1.seconds.to_i.should == 60**0
  end

  it "minutes" do
    1.minutes.to_i.should == 60**1
  end

  it "hours" do
    1.hours.to_i.should == 60**2
  end

  it "days" do
    1.days.to_i.should == 24*(60**2)
  end

  it "weeks" do
    1.weeks.to_i.should == 7*24*(60**2)
  end

  it "fortnights" do
    1.fortnights.to_i .should == 14*24*(60**2)
  end

  it "months" do
    1.months.to_i.should == 30*24*(60**2)
  end

  it "years" do
    1.years.to_i.should == 365*24*(60**2)
  end


  it "before" do
    t = Time.now
    1.day.before(t).should == t - 1.day
  end

  it "after" do
    t = Time.now
    1.day.after(t).should == t + 1.day
  end

  #

  it "addition" do
    (10.minutes + 1.minute).should == 11.minutes
    (10.minutes + 1.minute).to_i.should == 11.minutes.to_i

    (10.minutes + 60.seconds).should == 11.minutes
    (10.minutes + 60.seconds).to_i.should == 11.minutes.to_i
  end

  it "multiplication" do
    (10.minutes * 2).should == 20.minutes
    (10.minutes * 2).to_i.should ==20.minutes.to_i
  end

end

describe "Weekdays Test" do

  MONDAY   = Time.at(1165250000)
  THURSDAY = Time.at(1165500000)
  FRIDAY   = Time.at(1165606025)

  it "weekday after monday" do
    1.weekday.since(MONDAY).wday.should == 2
  end

  it "weekday after friday" do
    1.weekday.after(FRIDAY).wday.should == 1
  end

  it "weekdays before friday" do
    3.weekdays.before(FRIDAY).wday.should == 2
  end

  #it "weekday before today" do
  #  Time.expects(:now).returns(THURSDAY)
  #  1.weekday.ago.wday.should == 3
  #end

  #it "weekdays after today" do
  #  Time.expects(:now).returns(MONDAY)
  #  2.weekday.from_now.wday.should == 3
  #end

end

