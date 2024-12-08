# Linked_lists
Exercise from Ruby course of The Odin Project

https://www.theodinproject.com/lessons/ruby-linked-lists

In Computer Science, one of the most basic and fundamental data structures is the linked list, which functions similarly to an array. The principal benefit of a linked list over a conventional array is that the list elements can easily be inserted or removed without reallocation of any other elements.

In some programming languages, the size of an array is a concern and one of the ways to overcome that problem and allow dynamically allocated data is using linked lists.

Assignment
You will need two classes:

LinkedList class, which will represent the full list.
Node class, containing two instance variables, #value and #next_node, set both as nil by default.
Build the following methods in your linked list class:

#append(value) adds a new node containing value to the end of the list
#prepend(value) adds a new node containing value to the start of the list
#size returns the total number of nodes in the list
#head returns the first node in the list
#tail returns the last node in the list
#at(index) returns the node at the given index
#pop removes the last element from the list
#contains?(value) returns true if the passed in value is in the list and otherwise returns false.
#find(value) returns the index of the node containing value, or nil if not found.
#to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( value ) -> ( value ) -> ( value ) -> nil
Extra credit
#insert_at(value, index) that inserts a new node with the provided value at the given index.
#remove_at(index) that removes the node at the given index.