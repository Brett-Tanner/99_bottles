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
    if n.zero?
      "Go to the store and buy some more, "
    else
      "Take #{pronoun(n)} down and pass it around, "
    end
  end

  def container(n)
    n == 1 ? 'bottle' : 'bottles'
  end

  def pronoun(n)
    n == 1 ? 'it' : 'one'
  end

  def quantity(n)
    n.zero? ? 'no more' : n.to_s
  end

  def successor(n)
    n.zero? ? 99 : n - 1
  end
end
