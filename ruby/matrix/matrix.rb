class Matrix
  def initialize(str_array)
    @str_array = str_array
  end 
  
  def rows
    @str_array.lines.map { |x| x.scan(/\d+/).map(&:to_i) }
  end

  def columns
    self.rows.transpose
  end
end

