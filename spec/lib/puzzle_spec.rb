require 'spec_helper'
require 'puzzle'

describe Puzzle do
  describe "Shouldn't convert weird things" do
    it "converts 0 to empty string" do
      expect(subject.convert_digit(0)).to eq("")
    end
  end

  describe "Convert single digit to Roman" do
  	it "converts 1 to I" do
  	  expect(subject.convert_digit(1)).to eq('I')
  	end
    it "converts 2 to II" do
      expect(subject.convert_digit(2)).to eq('II')
    end
    it "converts 3 to III" do
      expect(subject.convert_digit(3)).to eq('III')
    end
    it "converts 4 to IV" do
      expect(subject.convert_digit(4)).to eq('IV')
    end
    it "converts 5 to V" do
      expect(subject.convert_digit(5)).to eq('V')
    end
    it "converts 6 to VI" do
      expect(subject.convert_digit(6)).to eq('VI')
    end
    it "converts 9 to IX" do
      expect(subject.convert_digit(9)).to eq('IX')
    end
  end

  describe "Convert two digits to Roman" do
    it "converts 10 to X" do
      expect(subject.convert_digit(10)).to eq('X')
    end

    it "converts 15 to XV" do
      expect(subject.convert_digit(15)).to eq("XV")
    end

    it "converts 50 to L" do
      expect(subject.convert_digit(50)).to eq("L")
    end

    it "converts 17 to XVII" do
      expect(subject.convert_digit(17)).to eq("XVII")
    end
 
    it "converts 99 to XCIX" do
      expect(subject.convert_digit(99)).to eq("XCIX")
    end

    it "converts 100 to C" do
      expect(subject.convert_digit(100)).to eq("C")
    end   

    it "converts 1000 to M" do
      expect(subject.convert_digit(1000)).to eq("M")
    end    
   end
end
