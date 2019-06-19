class Matrix
  attr_reader :rows, :columns

  def initialize(input)
    @rows = input.split("\n").map do |x|
              x.scan(/\d+/).map(&:to_i)
            end

    @columns = @rows[0].each_with_index.inject([]) do |result, (x, index)|
                   result << @rows.reduce([]){|res, y| res << y[index]; res }
                   result
                end
  end       
end
