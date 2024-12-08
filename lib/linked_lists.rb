module LikedLists

  class LinkedList

    class Node

      def initialize(value = nil, next_node = nil)
        @value = value
        @next_node = next_node
      end

      def try_to_append(node) 
        return false if node.nil?
        if @next_node.nil?
          @next_node = node
          return true
        else
          @next_node.try_to_append(node)
        end
      end

      def append_directly(node = nil)
        @next_node = node
      end

      def tail_length
        if @next_node.nil?
          return 0
        else 
          return 1 + @next_node.tail_length
        end
      end

      def to_s
        if @next_node.nil?
          "( #{@value} ) -> nil"
        else
          "( #{@value} ) -> " + @next_node.to_s
        end
      end
  
    end

    def initialize
      @head = nil
    end

    def append(value)
      new_node = Node.new(value)
      if @head.nil?
        @head = new_node
      else
        @head.try_to_append(new_node)
      end
    end

    def prepend(value)
      new_node = Node.new(value)
      new_node.append_directly(@head)
      @head = new_node
    end

    def size
      if @head.nil?
        return 0
      else
        return 1 + @head.tail_length
      end
    end

    def to_s
      if @head.nil?
        "nil"
      else
        @head.to_s
      end
    end
  end


end