require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/array_intersection'

describe "array intersection" do
  describe "basic tests" do
    describe "test 1" do
      it "some common elements" do
        array_1 = [70, 90, 34, 21, 78, 42]
        array_2 = [21, 67, 54, 29, 42, 30]
        expected_intersection = [21, 42]

        intersection(array_1, array_2).sort!.must_equal expected_intersection
      end
    end

    describe "test 2" do
      it "some elements common" do
        array_1 = [92, 2, 5, 4, 1, 89, 90]
        array_2 = [89, 5, 76, 4, 1, 2]
        expected_intersection = [1, 2, 4, 5, 89]

        intersection(array_1, array_2).sort!.must_equal expected_intersection
      end
    end

    describe "test 3" do
      it "no elements common" do
        array_1 = [92, 2, 5, 90]
        array_2 = [89, 76, 4, 1]
        expected_intersection = []

        intersection(array_1, array_2).sort!.must_equal expected_intersection
      end
    end
  end

  # if the parameter is an object, check for nil
  describe "nil object input test" do
    describe "nil test 1" do
      it "first parameter nil" do
        array_1 = nil
        array_2 = [89, 76, 4, 1]
        expected_intersection = []

        intersection(array_1, array_2).must_equal expected_intersection
      end
    end

    describe "nil test 2" do
      it "second parameter nil" do
        array_1 = [92, 2, 5, 90]
        array_2 = nil
        expected_intersection = []

        intersection(array_1, array_2).must_equal expected_intersection
      end
    end
  end

  describe "edge cases" do
    describe "edge case 1" do
      it "second array empty" do
        array_1 = [70, 90, 34, 21, 78, 42]
        array_2 = []
        expected_intersection = []

        intersection(array_1, array_2).sort!.must_equal expected_intersection
      end
    end

    describe "edge case 2" do
      it "first array empty" do
        array_1 = []
        array_2 = [70, 90, 34, 21, 78, 42]
        expected_intersection = []

        intersection(array_1, array_2).sort!.must_equal expected_intersection
      end
    end

    describe "edge case 3" do
      it "all elements common" do
        array_1 = [2, 5, 4, 1, 89]
        array_2 = [89, 5, 4, 1, 2]
        expected_intersection = [1, 2, 4, 5, 89]

        intersection(array_1, array_2).sort!.must_equal expected_intersection
      end
    end
  end
end
