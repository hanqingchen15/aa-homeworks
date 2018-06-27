require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Han") }
  let(:cake) {Dessert.new("cake", 25, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(cake.type).to eq("cake")
    end

    it "sets a quantity" do
      expect(cake.quantity).to eq(25)
    end

    it "starts ingredients as an empty array" do
      expect(cake.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("han", "25", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cake.add_ingredient("Flour")
      expect(cake.ingredients).to eq(["Flour"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      cake.add_ingredient("Flour")
      cake.add_ingredient("Egg")
      cake.add_ingredient("Sugar")
      cake.add_ingredient("Chocolate")
      expect(cake.ingredients).to eq(["Flour", "Egg", "Sugar", "Chocolate"])
      cake.mix!
      expect(cake.ingredients).to_not eq(["Flour", "Egg", "Sugar", "Chocolate"])
    end
  end
  #
  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cake.eat(10)
      expect(cake.quantity).to eq(15)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { cake.eat(30)}.to raise_error("not enough left!")
    end

  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Han the Great Baker")

      expect(cake.serve).to eq("Chef Han the Great Baker has made 25 cakes!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      allow(chef).to receive(:bake).with(cake)
      cake.make_more
    end
  end
end
