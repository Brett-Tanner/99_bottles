require_relative './bottle_verse'

class CountdownSong
  attr_reader :max, :min, :verse_template

  def initialize(verse_template: BottleVerse, max: 99, min: 0)
    @max, @min = max, min
    @verse_template = verse_template
  end

  def song
    verses(max, min)
  end

  def verse(n)
    verse_template.lyrics(n)
  end

  def verses(start_verse, end_verse)
    start_verse.downto(end_verse).map { |n| verse(n) }.join("\n")
  end
end
