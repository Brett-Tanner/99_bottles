class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def self.for(n)
    @registry.find { |candidate| candidate.handles?(n) }.new(n)
  end

  def self.handles?(_)
    true
  end

  def self.inherited(candidate)
    self.register(candidate)
  end

  def self.registry
    @registry ||= [BottleNumber]
  end

  def self.register(candidate)
    registry.prepend(candidate)
    p registry
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
