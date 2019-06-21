class Triangle

  def initialize(lengths_arr)
    @one    = lengths_arr[0]
    @two    = lengths_arr[1]
    @three  = lengths_arr[2]

  end

  def triange?
    @one + @two > @three && @one + @three > @two && @two + @three > @one
  end

  def equilateral?
    @one == @two && @two == @three && self.triange?
  end

  def isosceles?
    (@one == @two || @one == @three || @two == @three) && self.triange?
  end

  def scalene?
    !self.isosceles? && self.triange?
  end

end
