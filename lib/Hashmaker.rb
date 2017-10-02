require "Hashmaker/version"

module Hashmaker
  def hashmaker
    array = self.flatten.each_with_object(Hash.new { 0 }) do |i, result|
      result[i] += 1
      result
    end

    p "Result: #{array}"
  rescue => exception
    p "Error! #{exception.inspect}"
  end
end

class Array
	include Hashmaker
end