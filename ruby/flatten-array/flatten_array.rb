module FlattenArray
  def self.flatten(array, flatten=[])
    if array.all?{|x| !x.is_a? Array }
      return flatten.concat(array.filter{|x| x != nil}) 
    end 
    array.each do |list|
      if !list.is_a? Array
        flatten << list if list
      else   
       flatten = self.flatten(list, flatten)
      end
    end

    return flatten  
  end

end


