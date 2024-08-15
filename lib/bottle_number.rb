class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def action
    if number.zero?
      "Go to the store and buy some more, "
    else
      "Take #{pronoun} down and pass it around, "
    end
  end

  def container
    number == 1 ? 'bottle' : 'bottles'
  end

  def pronoun
    number == 1 ? 'it' : 'one'
  end

  def quantity
    number.zero? ? 'no more' : number.to_s
  end

  def successor
    number.zero? ? 99 : number - 1
  end
end
