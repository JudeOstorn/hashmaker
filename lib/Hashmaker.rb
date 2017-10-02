require "Hashmaker/version"

module Hashmaker
  def hashmaker(array1, array2)
    array = array1 + array2

    array = array.flatten.each_with_object(Hash.new { 0 }) do |i, result|
      result[i] += 1
      result
    end

    p "Result: #{array}"
  rescue => exception
    p "Error! #{exception.inspect}"
  end
end

#class Arrays
#	include HashMaker
#end