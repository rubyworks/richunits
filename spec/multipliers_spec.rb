require 'richunits/multipliers'

describe "Multipliers" do

  it "deka" do
    1.deka.should == 10
  end

  it "hecto" do
    1.hecto.should == 100
  end

  it "kilo" do
    1.kilo.should == 1000
  end

  it "mega" do
    1.mega.should == 1000000
  end

  it "giga" do
    1.giga.should == 1000000000
  end

  it "tera" do
    1.tera.should == 1000000000000
  end

  it "peta" do
    1.peta.should == 1000000000000000
  end

  it "exa" do
    1.exa.should == 1000000000000000000
  end

  # Fractional

  it "deci" do
    1.deci.should == 0.1
  end

  it "centi" do
    1.centi.should == 0.01
  end

  it "milli" do
    1.milli.should == 0.001
  end

  it "milli" do
    1.micro.should == 0.000001
  end

  it "nano" do
    1.nano.should == 0.000000001
  end

  it "pico" do
    1.pico.should == 0.000000000001
  end

  it "femto" do
    1.femto.should == 0.000000000000001
  end

  it "atto" do
    1.atto.should == 0.000000000000000001
  end

  # SI Binary

  it "kibi" do
    1.kibi.should == 1024
  end

  it "mebi" do
    1.mebi.should == 1024**2
  end

  it "gibi" do
    1.gibi.should == 1024**3
  end

  it "tebi" do
    1.tebi.should == 1024**4
  end

  it "pebi" do
    1.pebi.should == 1024**5
  end

  it "exbi" do
    1.exbi.should == 1024**6
  end

end

