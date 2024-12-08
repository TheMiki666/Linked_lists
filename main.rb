require_relative "lib/linked_lists"

list = LikedLists::LinkedList.new

puts list
puts list.size
list.append("Taurus")
puts list
puts list.size
list.append("Gemini")
list.append("Cancer")
puts list
list.prepend("Aries")
puts list
puts list.size
list.append("Leo")
list.append("Virgo")
list.append("Libra")
list.append("Scorpio")
list.append("Sagittarius")
list.append("Capricorn")
list.append("Acuarius")
list.append("Pisces")
puts list
puts list.size