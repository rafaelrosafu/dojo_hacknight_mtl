class Puzzle
  Digits = %w[I II III IV V 
               VI VII VIII IX]
  Tens =   %w[X XX XXX XL L
               LX LXX LXXX XC]
  Hundreds =   %w[C CC CCC CD D
               DC DCC DCCC CM M]
  def convert_digit(number)
    if number == 0
      ""
    elsif number / 100 > 0
      Hundreds[number / 100 - 1] + convert_digit(number % 100)
    elsif number / 10 > 0
      Tens[number / 10 - 1] + convert_digit(number % 10)
    else
      Digits[number-1]
    end
  end
end