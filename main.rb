require_relative "lib/linked_lists"

list = LikedLists::LinkedList.new

def print_all_info(list)
  puts list
  puts "Size: #{list.size}"
  puts "Head: " + list.head
  puts "Tail: " + list.tail
  puts "------"
end

print_all_info(list)
list.append("Taurus")
print_all_info(list)
list.append("Gemini")
list.append("Cancer")
print_all_info(list)
list.prepend("Aries")
print_all_info(list)
list.append("Leo")
list.append("Virgo")
list.append("Libra")
list.append("Scorpio")
list.append("Sagittarius")
list.append("Capricorn")
list.append("Acuarius")
list.append("Pisces")
print_all_info(list)