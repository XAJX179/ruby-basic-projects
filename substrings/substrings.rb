def substrings(string,dictionary)
  result = Hash.new(0)
  arr = string.downcase!.split('')  
  dictionary.each do |sub|
    arr.each_index do |index|
      if string[index,sub.length] == sub
        result[sub] += 1
      end
    end
  end

  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?",dictionary)