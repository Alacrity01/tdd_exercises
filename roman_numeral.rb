require 'rspec'

class RomanNumeral
  def convert(number)
    output = ""

    numbers = [500, 400, 100, 90, 50, 40, 10]

    until number <= 0

      # numbers.each do |number_value|

      # end

      (number/500).times do 
        output += "D"
        number -= 500
      end

      (number/400).times do 
        output += "CD"
        number -= 400
      end

      (number/100).times do 
        output += "C"
        number -= 100
      end

      (number/90).times do 
        output += "XC"
        number -= 90
      end


      (number/50).times do 
        output += "L"
        number -= 50
      end

      (number/40).times do 
        output += "XL"
        number -= 40
      end

      (number/10).times do 
        output += "X"
        number -= 10
      end

      if number == 9
        output += "IX"
        number -= 9
      end

      (number/5).times do 
        output += "V"
        number -= 5
      end

      if number == 4
        output += "IV"
        number -= 4
      end

      if number > 0 && number < 4  
        output += "I"
        number -= 1
      end
    end
    output
  end
end








RSpec.describe RomanNumeral do
  describe '#convert' do

    it 'should return "I" if given 1' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(1)).to eq ("I")
    end

    it 'should return "II" if given 2' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(2)).to eq ("II")
    end

    it 'should return "III" if given 3' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(3)).to eq ("III")
    end

    it 'should return "IV" if given 4' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(4)).to eq ("IV")
    end

    it 'should return "V" if given 5' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(5)).to eq ("V")
    end

    it 'should return "VI" if given 6' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(6)).to eq ("VI")
    end

    it 'should return "VII" if given 7' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(7)).to eq ("VII")
    end

    it 'should return "VIII" if given 8' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(8)).to eq ("VIII")
    end

    it 'should return "IX" if given 9' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(9)).to eq ("IX")
    end

    it 'should return "X" if given 10' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(10)).to eq ("X")
    end

    it 'should return "XI" if given 11' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(11)).to eq ("XI")
    end

    it 'should return "XII" if given 12' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(12)).to eq ("XII")
    end

    it 'should return "XIII" if given 13' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(13)).to eq ("XIII")
    end

    it 'should return "XIV" if given 14' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(14)).to eq ("XIV")
    end

    it 'should return "XV" if given 15' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(15)).to eq ("XV")
    end

    it 'should return "XVI" if given 16' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(16)).to eq ("XVI")
    end

    it 'should return "XVII" if given 17' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(17)).to eq ("XVII")
    end

    it 'should return "XVIII" if given 18' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(18)).to eq ("XVIII")
    end

    it 'should return "XIX" if given 19' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(19)).to eq ("XIX")
    end

    it 'should return "XX" if given 20' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(20)).to eq ("XX")
    end


    it 'should return "XXIV" if given 24' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(24)).to eq ("XXIV")
    end

    it 'should return "XXIV" if given 25' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(25)).to eq ("XXV")
    end

    it 'should return "XL" if given 40' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(40)).to eq ("XL")
    end

    it 'should return "XLI" if given 41' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(41)).to eq ("XLI")
    end

    it 'should return "XLIX" if given 49' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(49)).to eq ("XLIX")
    end

    it 'should return "L" if given 50' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(50)).to eq ("L")
    end

    it 'should return "LX" if given 60' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(60)).to eq ("LX")
    end

    it 'should return "LXIV" if given 64' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(64)).to eq ("LXIV")
    end

    it 'should return "LXIX" if given 69' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(69)).to eq ("LXIX") 
    end

    it 'should return "XC" if given 90' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(90)).to eq ("XC") 
    end

    it 'should return "CD" if given 400' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(400)).to eq ("CD") 
    end

    it 'should return "D" if given 500' do
      roman_numeral = RomanNumeral.new
      expect(roman_numeral.convert(500)).to eq ("D") 
    end
  end
end