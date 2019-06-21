module Pangram
  def self.pangram?(sentence)
    alphabat = 'abcdefghijklmnopqrstuvwxyz'
    sentence.downcase.scan(/[a-z]+/).join.each_char {|x| alphabat.sub!(x, '') }
    return alphabat.empty?
  end

end

