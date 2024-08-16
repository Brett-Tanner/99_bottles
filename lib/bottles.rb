require_relative './bottle_number'

class Bottles
  def verse(n)
    bottle_number = BottleNumber.new(n)
    next_bottle_number = BottleNumber.new(bottle_number.successor)

    "#{bottle_number.to_s.capitalize} of beer on the wall, " \
    "#{bottle_number.to_s} of beer.\n" \
    "#{bottle_number.action}" \
    "#{next_bottle_number.to_s} of beer on the wall.\n"
  end

  def verses(start_verse, end_verse)
    start_verse.downto(end_verse).map { |n| verse(n) }.join("\n")
  end

  def song
    verses(99, 0)
  end
end
