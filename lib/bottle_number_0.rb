class BottleNumber0 < BottleNumber
  def action
    "Go to the store and buy some more"
  end

  def successor
    BottleNumber.for(99)
  end

  def quantity
     'no more'
  end
end
