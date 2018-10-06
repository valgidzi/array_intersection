# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  array = []

  return array if array1.nil? || array2.nil?

  array1.length.times do |m|
    array2.length.times do |n|
      if array1[m] == array2[n]
        array << array1[m]
      end
    end
  end

  return array
end

# Time complexity: linear
#  Given one array of length m and another of length n, the time complexity is O(mn).
# Space complexity: linear
#  The space complexity is also O(mn). The size of the returned array depnds on the length of the arrays being compared.
