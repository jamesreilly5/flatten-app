class ArrayUtils
  def self.flatten(array)
    raise ArgumentError if array.nil?
    arr = []
    array.each do |element|
      if element.kind_of?(Array)
        arr += self.flatten(element)
      else
        arr << element
      end
    end
    arr
  end
end
