require_relative './bottle_verse'

class Bottles
  attr_reader :verse_template

  def initialize(verse_template: BottleVerse)
    @verse_template = verse_template
  end

  def verse(n)
    verse_template.new(n).lyrics
  end

  def verses(start_verse, end_verse)
    start_verse.downto(end_verse).map { |n| verse(n) }.join("\n")
  end

  def song
    verses(99, 0)
  end
end
