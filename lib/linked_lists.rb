module LikedLists

  class LinkedList

    class Node
      attr_reader :value

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

      def tail
        if @next_node.nil?
          "( #{value} )"
        else
          @next_node.tail
        end
      end

      def at(index)
        if index==0
          "( #{value} )"
        elsif @next_node.nil?
          "nil"
        else
          @next_node.at(index-1)
        end
      end

      def to_s
        if @next_node.nil?
          "( #{@value} ) -> nil"
        else
          "( #{@value} ) -> " + @next_node.to_s
        end
      end
  
    end #Of Node class

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

    def head
      if @head.nil?
        "nil"
      else
        "( #{@head.value} )"
      end
    end

    def tail
      if @head.nil?
        "nil"
      else
        @head.tail
      end
    end

    #It also works with negative indexes (like an array)
    def at(index)
      index = index.to_i
      index = size + index if index < 0

      if index <0 || @head.nil?
        "nil"
      else
        @head.at(index)
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