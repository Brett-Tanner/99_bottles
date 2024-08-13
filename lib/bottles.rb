class Bottles
  def verse(n)
    case n
    when 0
      "No more bottles of beer on the wall, " \
      "no more bottles of beer.\n" \
      "Go to the store and buy some more, " \
      "99 bottles of beer on the wall.\n"
    when 1
      "#{n} #{container(n)} of beer on the wall, " \
      "#{n} #{container(n)} of beer.\n" \
      "Take #{pronoun(n)} down and pass it around, " \
      "no more bottles of beer on the wall.\n"
    else
      "#{n} #{container(n)} of beer on the wall, " \
      "#{n} #{container(n)} of beer.\n" \
      "Take #{pronoun(n)} down and pass it around, " \
      "#{n - 1} #{container(n - 1)} of beer on the wall.\n"
    end
  end

  def verses(start_verse, end_verse)
    start_verse.downto(end_verse).map { |n| verse(n) }.join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def container(n)
    n == 1 ? "bottle" : "bottles"
  end

  def pronoun(n)
    n == 1 ? "it" : "one"
  end
end
