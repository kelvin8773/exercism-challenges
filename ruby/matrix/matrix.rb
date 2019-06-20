class Matrix
  def initialize(input)
    @input = input
  end 
  
  def rows
    @input.split("\n").map { |x| x.scan(/\d+/).map(&:to_i) }
  end

  def columns
    rows = self.rows
    rows[0].each_with_index.inject([]) do |result, (x, index)|
      result << rows.reduce([]){|res, y| res << y[index]; res }
      result
   end
  end
end

