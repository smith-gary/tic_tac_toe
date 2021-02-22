require "spec_helper"

describe Array do
  context "#all_empty?" do
    it "retruns true if all elements of the Array are empty" do
      expect(["", "", ""].all_empty?).to be_truthy
    end

    it "returns false if some of the Array are empty" do
      expect(["", 1, "", Object.new, :a].all_empty?).to be_falsey
    end

    it "returns true for an empty Array" do
      expect([].all_empty?).to be_truthy
    end
  end

  context "#all_same?" do
    it "returns true if all elements of the Array are the same" do
      expect(["A", "A", "A"].all_same?).to be_truthy
    end

    it "returns false if some of the Array elements are not the same" do
      expect(["", 1, "", Object.new, :a].all_same?).to be_falsey
    end

    it "returns true for an empty Array" do
      expect([].all_same?).to be_truthy
    end
  end

  context "#any_empty?" do
    it "returns true if any elements of the Array are empty" do
      expect(["", "", 1].any_empty?).to be_truthy
    end

    it "returns false if some of the elements of the Array not empty" do
      expect([1, 1, 1, Object.new, :a].any_empty?).to be_falsey
    end

    it "returns true for an empty Array" do
      expect([].all_same?).to be_truthy
    end
  end

  context "#none_empty" do
    it "returns true if none of the elements of the Array empty" do
      expect([1, 1, 1].none_empty?).to be_truthy
    end

    it "returns true for an empty Array" do
      expect([].all_same?).to be_truthy
    end
  end
end