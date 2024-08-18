require_relative './bottle_verse'

class Bottles
  def verse(n)
    BottleVerse.new(n).lyrics
  end

  def verses(start_verse, end_verse)
    start_verse.downto(end_verse).map { |n| verse(n) }.join("\n")
  end

  def song
    verses(99, 0)
  end
end
