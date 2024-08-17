class BottleNumber0 < BottleNumber
  BottleNumber.register(self)

  def action
    "Go to the store and buy some more"
  end

  def self.handles?(n)
    n.zero?
  end

  def successor
    BottleNumber.for(99)
  end

  def quantity
     'no more'
  end
end
