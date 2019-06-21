module Complement 
  DNA_MAP = {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U",
    "U" => "A"
  }

  def self.of_dna(string)
    string.each_char.inject([]){ |res, x| res << DNA_MAP[x] }.join
  end 
end
