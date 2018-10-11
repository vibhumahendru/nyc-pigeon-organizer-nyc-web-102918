require "pry"
def nyc_pigeon_organizer(data)
 nameAr = []
 data.each do |key, detail_hash|
   detail_hash.each do |char, name_array|
     name_array.each do |name|
       nameAr.push(name)
     end
   end
 end
 nameAr
     nameArray = nameAr.uniq
     answerAr = {}
  nameArray.each do |name|
    data.each do |key_be, valueH|
      valueH.each do |value_be, nameAraay|
        
        if nameAraay.include?(name)
          temp_hash = {}
          temp_hash[key_be] = [value_be.to_s]
          if answerAr[name] == nil
            answerAr[name] = temp_hash
            elsif answerAr[name][key_be] != nil
            answerAr[name][key_be].push(value_be.to_s)
            
          else
            answerAr[name].merge!(temp_hash)
          end
        end
      end
    end
  end
  answerAr
  
  
end