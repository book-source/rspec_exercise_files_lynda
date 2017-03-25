require 'car'

describe "Car" do
  # examples

  describe "attributes" do  
    it "allows reading and writing for :make" do 
      car = Car.new
      car.make = "qiya"
      expect(car.make).to eq "qiya"
    end

    it "allows reading and writing for :year" do 
      car = Car.new
      car.year = 1987
      expect(car.year).to eq(1987)
    end

    it "allows reading and writing for :color" do 
      car = Car.new
      car.color = "blue"
      expect(car.color).to eq "blue"
    end

    it "allows reading :wheels" do
      car = Car.new
      expect(car.wheels).to eq(4)
    end

    it "allows writing for doors"

  end

  describe ".colors" do
    it "returns an array of names" do
      c = ['blue', 'black', 'red', 'green']
      expect(Car.colors).to match_array(c)
    end
  end

  describe "#full_name" do
    it "returns a string in the expected format" do
      @qiya = Car.new(make: "qiya", :year => 2004, :color => 'blue')
      expect(@qiya.full_name).to eq('2004 qiya (blue)')
    end

    context "when initialized with no argument" do
      it "returns a default string, when create a car obj with no argument " do
        car = Car.new
        expect(car.full_name).to eq("2007 Volvo (unknown)")
      end
    end
  end

end