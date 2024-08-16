require_relative './bottle_number'
require_relative './bottle_number_0'
require_relative './bottle_number_1'

class Bottles
  def verse(n)
    bottle_number = BottleNumber.for(n)

    "#{bottle_number} of beer on the wall, ".capitalize +
    "#{bottle_number} of beer.\n" \
    "#{bottle_number.action}, " \
    "#{bottle_number.successor} of beer on the wall.\n"
  end

  def verses(start_verse, end_verse)
    start_verse.downto(end_verse).map { |n| verse(n) }.join("\n")
  end

  def song
    verses(99, 0)
  end
end
