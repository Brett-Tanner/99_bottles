require_relative './bottle_number'
require_relative './bottle_number_0'

class Bottles
  def verse(n)
    bottle_number = bottle_number_for(n)
    next_bottle_number = bottle_number_for(bottle_number.successor)

    "#{bottle_number} of beer on the wall, ".capitalize +
    "#{bottle_number} of beer.\n" \
    "#{bottle_number.action}, " \
    "#{next_bottle_number} of beer on the wall.\n"
  end

  def verses(start_verse, end_verse)
    start_verse.downto(end_verse).map { |n| verse(n) }.join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def bottle_number_for(n)
    if n.zero?
      BottleNumber0
    else
      BottleNumber
    end.new(n)
  end
end
