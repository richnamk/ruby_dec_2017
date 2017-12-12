require "spec_helper"
RSpec.describe Stringer do
  it "concatenates undefined number of strings with a space" do 
    expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end

  it "If the given string has a greater length than the max length parameter, minify should shorten it to the max length and add a '...' to the end." do
    expect(Stringer.minify("This is longwinded statement", 10)).to eq("This is lo...")
  end

  it "If the string length is shorter than or equal to the max length, minify should return the string itself." do
    expect(Stringer.minify("Hi there", 10)).to eq("Hi there")
  end

  it "Stringer.replacify('I can't do this', 'can't', 'can') => 'I can do this'" do
    expect(Stringer.replacify("I can't do this", "can't", "can")).to eq("I can do this")
  end

  it "Stringer.tokenize('I love to code') => ['I', 'love', 'to', 'code']" do
    expect(Stringer.tokenize("I love to code")).to eq(['I', 'love', 'to', 'code'])
  end

  it "Stringer.removify('I'm not a developer', 'not') => 'I'm  a developer'" do
    expect(Stringer.removify("I'm not a developer", "not")).to eq("I'm  a developer")
  end
end
