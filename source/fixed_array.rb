class FixedArray
  attr_reader :array

  class OutOfBoundsException < StandardError
  end

  def initialize(size)
    @array = Array.new(size)
  end

  def get(index)
    raise OutOfBoundsException, "That index is out of the bounds of this array" if index >= @array.length
    return @array[index]
  end

  def set(index, element)
    raise OutOfBoundsException, "That index is out of the bounds of this array" if index >= @array.length
    @array[index] = element
  end
end

