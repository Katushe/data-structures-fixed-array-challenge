require_relative 'fixed_array'

describe FixedArray do
 let(:fixed_array) {FixedArray.new(5)}

  it "creates an array of the provided size" do
    expect(fixed_array.array.length).to eq(5)
  end

  describe "#gets" do
    it "gets the correct value from an index" do
      fixed_array.array[2] = 4
      expect(fixed_array.get(2)).to eq(4)
    end

    it "raises an error if you try to access an index past the size of the array" do
      expect{fixed_array.get(6)}.to raise_error(FixedArray::OutOfBoundsException)
    end
  end


  describe "#set" do
    it "sets a value to the correct index" do
      expect{fixed_array.set(3, 6)}.to change{fixed_array.array[3]}.to(6)
    end

    it "raises an error if you try to assign a value to an index past the size of the array" do
      expect{fixed_array.set(7, 6)}.to raise_error(FixedArray::OutOfBoundsException)
    end
  end
end
