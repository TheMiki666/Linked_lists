require_relative "lib/linked_lists"

list = LikedLists::LinkedList.new

def print_all_info(list)
  puts list
  puts "Size: #{list.size}"
  puts "Head: " + list.head.to_s
  puts "Tail: " + list.tail.to_s
end


print_all_info(list)
puts "At index 0: " + list.at(0).to_s
puts "At index 3: " + list.at(3).to_s
puts "Aries at: #{list.find("Aries")}"
puts "------"
puts list.pop
puts list
puts "Contains Aries: #{list.contains?("Aries")}"
puts "------"
list.append("Taurus")
print_all_info(list)
puts "At index 0: " + list.at(0).to_s
puts "At index 3: " + list.at(3).to_s
puts "Contains Taurus: #{list.contains?("Taurus")}"
puts "------"
puts list.pop
puts list
puts "Contains Taurus: #{list.contains?("Taurus")}"
puts "------"
list.insert_at("Cancer", -20)
puts list
list.insert_at("Taurus", 0)
puts list
list.insert_at("Gemini", 1)
#puts list
#list.insert_at("Cow", 0)
print_all_info(list)
puts "At index -1: " + list.at(-1).to_s
puts "At index -4: " + list.at(-4).to_s
puts "------"

list.prepend("Aries")
print_all_info(list)
puts "At index 0: " + list.at(0).to_s
puts "At index 3: " + list.at(3).to_s
puts "At index -1: " + list.at(-1).to_s
puts "At index -4: " + list.at(-4).to_s
puts "Aries at: #{list.find("Aries")}"
puts "------"

list.append("Leo")
list.append("Virgo")
list.append("Libra")
list.append("Capricorn")
list.append("Acuarius")
puts list
list.insert_at("Pisces", 50)
puts list
list.insert_at("Sagittarius",7)
puts list
list.insert_at("Scorpio", 7)

print_all_info(list)
puts "At index 0: " + list.at(0).to_s
puts "At index 3: " + list.at(3).to_s
puts "At index 11: " + list.at(11).to_s
puts "At index 20: " + list.at(20).to_s
puts "At index -1: " + list.at(-1).to_s
puts "At index -4: " + list.at(-4).to_s
puts "At index -20: " + list.at(-20).to_s
puts "Contains Taurus: #{list.contains?("Taurus")}"
puts "Contains Aries: #{list.contains?("Aries")}"
puts "Contains Pisces: #{list.contains?("Pisces")}"
puts "Contains Goat: #{list.contains?("Goat")}"
puts "Aries at: #{list.find("Aries")}"
puts "Libra at: #{list.find("Libra")}"
puts "Pisces at: #{list.find("Pisces")}"
puts "Cow at: #{list.find("Cow")}"
puts "------"
puts list.pop
puts list.pop
print_all_info(list)
puts "Contains Pisces: #{list.contains?("Pisces")}"