module LikedLists

  class LinkedList

    class Node
      attr_reader :value
      attr_accessor :next_node

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
          value
        else
          @next_node.tail
        end
      end

      def at(index)
        if index==0
          value
        elsif @next_node.nil?
          nil
        else
          @next_node.at(index-1)
        end
      end

      # removes the next_node if it hasn't got another next_node
      def pop
        if @next_node.next_node.nil?
          response = next_node.value
          @next_node = nil
          response
        else
          @next_node.pop
        end
      end

      def contains?(value)
        if @value==value
          true
        elsif @next_node.nil?
          false
        else
          @next_node.contains?(value)
        end
      end

      def find(value, index)
        if @value==value
          index
        elsif @next_node.nil?
          nil
        else
          @next_node.find(value, index+1)
        end
      end

      def insert_at(new_node, index)
        if @next_node.nil?
          @next_node = new_node
        elsif index == 0 
          new_node.next_node=@next_node
          @next_node = new_node 
        else 
          @next_node.insert_at(new_node, index-1)
        end
      end

      #If index==0, tries to delete next node
      def delete_next_node(index)
        if index == 0
          if @next_node.next_node.nil?
            @next_node = nil  # And we'll wait for the garbage collector
          else 
            @next_node = @next_node.next_node
          end
        else
          if @next_node.next_node.nil?
            #The index is larger than the size
            return
          else
            @next_node.delete_next_node(index-1)
          end
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
        nil
      else
        @head.value
      end
    end

    def tail
      if @head.nil?
        nil
      else
        @head.tail
      end
    end

    #It also works with negative indexes (like an array)
    def at(index)
      index = index.to_i
      index = size + index if index < 0

      if index <0 || @head.nil?
        nil
      else
        @head.at(index)
      end
    end

    def pop
      if @head.nil?
        return nil
      elsif @head.next_node.nil?
        response = @head.value
        @head = nil 
        return response
      else
        @head.pop
      end
    end

    def contains?(value)
      if @head.nil?
        false
      else
        @head.contains?(value)
      end
    end

    def find(value)
      if @head.nil?
        nil
      else
        @head.find(value, 0)
      end
    end

    # If the index < 0 and larger than the list size, we insert the new element at the start
    def insert_at(value, index)
      index = index.to_i
      index = size + index if index < 0
      index = 0 if index < 0 
      new_node = Node.new (value)
      if index == 0 && @head.nil?
        @head = new_node
      elsif index == 0
        new_node.next_node = @head
        @head = new_node
      else
        if @head.nil?
          @head=new_node
        else
          @head.insert_at(new_node, index-1)
        end
      end
    end

    # In this case, f the index < 0 and larger than the list size, does nothing
    def delete_at(index)
      index = index.to_i
      index = size + index if index < 0
      return if index < 0
      return if index == 0 && @head.nil?
      if index == 0
        if @head.next_node.nil?
          @head = nil
          # We hope that Ruby has a garbage collector!
        else 
          @head=@head.next_node
        end
      else
        if @head.next_node.nil?
          return #The next node doesn't exists
        else
          @head.delete_next_node(index-1)
        end
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