class Golf
  def Golf.hole2(line)
    list = line.split(' ')
    sorted_second_char_list = list.map{|elem| elem[1..elem.length]}.sort

    sorted_hash = Hash.new
    sorted_second_char_mapping = list.map{|elem| sorted_hash[elem[1..elem.length]] = elem}.sort
    
    return_array = []
    for elem in sorted_second_char_list
      return_array << sorted_hash[elem]
    end
                
    return return_array.join(" ")
  end
  
end
