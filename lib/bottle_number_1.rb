class BottleNumber1 < BottleNumber
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
