module Complement 
  def self.of_dna(string)
   string.chars.map do |x|
    case x
      when 'G'
        x = 'C'
      when 'C'
        x = 'G'
      when 'T'
        x = 'A'
      when 'A'
        x = 'U'
      when 'U'
        x = 'A'
    end
  end.join('').to_s
  
  end
end

