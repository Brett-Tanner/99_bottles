class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def self.for(n)
    case n
    when 0
      BottleNumber0
    when 1
      BottleNumber1
    else
      BottleNumber
    end.new(n)
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def pronoun
    'one'
  end

  def successor
    BottleNumber.for(number - 1)
  end

  def to_s
    "#{quantity} #{container}"
  end

  private

  def container
    'bottles'
  end

  def quantity
    number.to_s
  end
end
