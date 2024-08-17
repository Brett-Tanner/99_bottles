class BottleNumber1 < BottleNumber
  BottleNumber.register(self)

  def self.handles?(n)
    n == 1
  end

  def pronoun
    'it'
  end

  private

  def container
    'bottle'
  end
end
