class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def pronoun
    number == 1 ? 'it' : 'one'
  end

  def successor
    number - 1
  end

  def to_s
    "#{quantity} #{container}"
  end

  private

  def container
    number == 1 ? 'bottle' : 'bottles'
  end

  def quantity
    number.to_s
  end
end
