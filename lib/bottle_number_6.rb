class BottleNumber6 < BottleNumber
  def self.handles?(n)
    n == 6
  end

  private

  def container
    'six-pack'
  end

  def quantity
    1
  end
end
