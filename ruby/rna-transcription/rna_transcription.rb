DNA_MAP = {
  "G" => "C",
  "C" => "G",
  "T" => "A",
  "A" => "U",
  "U" => "A"
}
module Complement 
  def self.of_dna(string)
    string.chars.map do |x|
    x = DNA_MAP[x]
    end.join
  end 
end



