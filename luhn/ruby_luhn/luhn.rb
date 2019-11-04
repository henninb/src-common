#!/usr/bin/env ruby

class Luhn
  public
  def self.check_luhn(s)
    s.gsub!(/[^0-9]/, "")
    ss = s.reverse.split(//)

    alternate = false
    total = 0
    ss.each do |c|
      if alternate
        total += double_it(c.to_i)
      else
        total += c.to_i
      end
      alternate = !alternate
    end
    (total % 10) == 0
  end

  private
  def self.double_it(i)
    i = i * 2
    if i > 9
      i = i % 10 + 1
    end
    i
  end

end

if $0 == __FILE__
  def test_valid(s)
    result = Luhn::check_luhn(s)
    if result
      puts "VALID: #{s}"
    else
      puts "INVALID: #{s} (should be valid)"
    end
  end

  test_valid('5105 1051 0510 5100') # Mastercard
  test_valid('5555 5555 5555 4444') # Mastercard

  test_valid('4222 2222 2222 2')    # Visa
  test_valid('4111 1111 1111 1111') # Visa
  test_valid('4012 8888 8888 1881') # Visa

  test_valid('3782 8224 6310 005')  # American Express
  test_valid('3714 4963 5398 431')  # American Express
  test_valid('3787 3449 3671 000')  # American Express Corporate
  test_valid('3782 8224 6310 005')  # Amex
  test_valid('3400 0000 0000 009')  # Amex
  test_valid('3700 0000 0000 002')  # Amex

  test_valid('38520000023237')      # Diners Club (14 digits)
  test_valid('30569309025904')      # Diners Club (14 digits)

  test_valid('6011111111111117')    # Discover (16 digits)
  test_valid('6011 0000 0000 0004') # Discover
  test_valid('6011 0000 0000 0012') # Discover
  test_valid('6011000990139424')    # Discover (16 digits)
  test_valid('6011601160116611')    # Discover (16 digits)

  test_valid('3530111333300000')    # JCB (16 digits)
  test_valid('3566002020360505')    # JCB (16 digits)

  test_valid('5431111111111111')    # Mastercard (16 digits)
end
