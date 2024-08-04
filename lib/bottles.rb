class Bottles
  SECOND_LAST = "Take it down and pass it around, no more bottles of beer on the wall.\n"
  LAST = "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"

  def verse(n)
    return LAST if n.zero?

    verse_one(n) + verse_two(n - 1)
  end

  def verses(start_verse, end_verse)
    start_verse.downto(end_verse).map { |n| verse(n) }.join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def verse_one(n)
    line_one = "#{n} #{pluralized_bottle(n)} of beer on the wall, "
    line_two = "#{n} #{pluralized_bottle(n)} of beer.\n"

    line_one + line_two
  end

  def verse_two(n)
    return SECOND_LAST if n.zero?

    line_one = 'Take one down and pass it around, '
    line_two = "#{n} #{pluralized_bottle(n)} of beer on the wall.\n"

    line_one + line_two
  end

  def pluralized_bottle(n)
    n > 1 ? 'bottles' : 'bottle'
  end
end
