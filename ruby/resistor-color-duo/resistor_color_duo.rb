RESISTOR_COLOR = {
  'Black'=> 0,
  'Brown'=> 1,
  'Red'=> 2,
  'Orange'=> 3,
  'Yellow'=> 4,
  'Green'=> 5,
  'Blue'=> 6,
  'Violet'=>7,
  'Grey'=> 8,
  'White'=> 9
}

module ResistorColorDuo  
  def self.value(array)
    array.map do |x|
      x = RESISTOR_COLOR[x.capitalize].to_s
    end.join.to_i
  end 
end
