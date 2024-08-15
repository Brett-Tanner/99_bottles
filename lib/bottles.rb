require_relative './bottle_number'

class Bottles
  def verse(n)
    "#{quantity(n).capitalize} #{container(n)} of beer on the wall, " \
    "#{quantity(n)} #{container(n)} of beer.\n" \
    "#{action(n)}" \
    "#{quantity(successor(n))} #{container(successor(n))} of beer on the wall.\n"
  end

  def verses(start_verse, end_verse)
    start_verse.downto(end_verse).map { |n| verse(n) }.join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def action(n)
    BottleNumber.new(n).action
  end

  def container(n)
    BottleNumber.new(n).container
  end

  def quantity(n)
    BottleNumber.new(n).quantity
  end

  def successor(n)
    BottleNumber.new(n).successor
  end
end
