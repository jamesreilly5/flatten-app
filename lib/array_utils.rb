class ArrayUtils
  def self.flatten(array)
    raise ArgumentError if array.nil?
    arr = []
    array.each do |element|
      element.is_a?(Array) ? arr += flatten(element) : arr << element
    end
    arr
  end
end
