require_relative "lib/linked_lists"

list = LikedLists::LinkedList.new

def print_all_info(list)
  puts list
  puts "Size: #{list.size}"
  puts "Head: " + list.head
  puts "Tail: " + list.tail
end

print_all_info(list)
puts "At index 0: " + list.at(0)
puts "At index 3: " + list.at(3)
puts "------"

list.append("Taurus")
print_all_info(list)
puts "At index 0: " + list.at(0)
puts "At index 3: " + list.at(3)
puts "------"

list.append("Gemini")
list.append("Cancer")
print_all_info(list)
puts "At index -1: " + list.at(-1)
puts "At index -4: " + list.at(-4)
puts "------"

list.prepend("Aries")
print_all_info(list)
puts "At index 0: " + list.at(0)
puts "At index 3: " + list.at(3)
puts "At index -1: " + list.at(-1)
puts "At index -4: " + list.at(-4)
puts "------"

list.append("Leo")
list.append("Virgo")
list.append("Libra")
list.append("Scorpio")
list.append("Sagittarius")
list.append("Capricorn")
list.append("Acuarius")
list.append("Pisces")
print_all_info(list)
puts "At index 0: " + list.at(0)
puts "At index 3: " + list.at(3)
puts "At index 11: " + list.at(11)
puts "At index 20: " + list.at(20)
puts "At index -1: " + list.at(-1)
puts "At index -4: " + list.at(-4)
puts "At index -20: " + list.at(-20)