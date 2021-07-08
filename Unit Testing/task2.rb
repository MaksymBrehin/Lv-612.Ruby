require 'rspec/autorun'
class Converter
 def converter(mpg)
  (mpg*(1.609344/4.54609188)).round(2)
 end
end
# car = Converter.new
# puts car.converter(2)

describe Converter do
  converter = Converter.new

  it "0" do
    expect(converter.converter(0)).to eq(0)
  end

  it "positive number" do
    expect(converter.converter(2)).to eq(0.71)
  end

  it "negative number" do
    a = 0
    expect(converter.converter(-2)).to be > a
  end

  # it "empty" do
  #   expect(converter.converter).not_to be_empty
  # end

end
