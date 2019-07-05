require './lib/main'

RSpec.describe "bubble sort main" do
  def sorted? (array)
    (1..(array.size - 1)).each do |i|
      if block_given?
        return false if yield(array[i], array[i - 1]).negative?
      else
        return false if array[i] < array[i - 1]
      end
    end
    true
  end

  context "#bubble_sort" do
    it "sorts integer array in ascending order" do
      array = [4, 3, 78, 2, 0, 2]
      expect(sorted? bubble_sort(array)).to eql true
    end
    it "sorts string array in lexical increasing order" do
      array = %w[hi hello hey a bull ball]
      expect(sorted? bubble_sort(array)).to eql true
    end
  end

  context "#bubble_sort_by" do
    it "sorts integer array in descending order" do
      array = [4, 3, 78, 2, 0, 2]
      desc_array = bubble_sort_by(array) { |prev, cur| cur - prev }
      expect(sorted? (desc_array) { |cur, prev| prev - cur } ).to eql true
    end
    it "sorts string array in increasing order of string length" do
      arr = %w[hi hello hey a bull ball]
      desc_arr = bubble_sort_by(arr) { |prev, cur| prev.length - cur.length }
      expect(sorted? (desc_arr) { |cu, pr| cu.length - pr.length } ).to eql true
    end
  end
end