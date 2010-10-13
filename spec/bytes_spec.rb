require 'richunits/bytes'
#require 'test/unit'

describe Numeric do

  # bits

  it "bits" do
    8.bits.should == 8
  end

  it "kilobits" do
    1.kilobit.should == 1024**1
  end

  it "megabits" do
    1.megabit.should == 1024**2
  end

  it "gigabits" do
    1.gigabit.should == 1024**3
  end

  it "terabits" do
    1.terabit.should == 1024**4
  end

  # bytes

  it "bytes" do
    1024.bytes.should == 8192
  end

  it "kilobytes" do
    1.kilobyte.should == 1024**1*8
  end

  it "megabytes" do
    1.megabyte.should == 1024**2*8
  end

  it "gigabytes" do
    1.gigabyte.should == 1024**3*8
  end

  it "terabytes" do
    1.terabyte.should == 1024**4*8
  end

  # bits_to_s

  it "strfbits" do
    1024.strfbits.should == "1.00 kb"
    1048576.strfbits.should == "1.00 mb"
    1073741824.strfbits.should == "1.00 gb"
    1099511627776.strfbits .should == "1.00 tb"
  end

  # bytes_to_s

  it "strfbytes" do
    1024.strfbytes.should == "1.00 KB"
    1048576.strfbytes.should == "1.00 MB"
    1073741824.strfbytes.should == "1.00 GB"
    1099511627776.strfbytes.should == "1.00 TB"
  end

end
