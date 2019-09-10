
class LinkedListNode
    attr_accessor :value, :next_node

    def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end
end


class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    def push(value)
        @data = LinkedListNode.new(value, @data)
    end


    def pop
        return nil if is_empty?
        val = @data.value
        @data = @data.next_node
        val
    end

    def is_empty?
        @data.nil?
    end

end

def reverse_list(list)      
    new_list = Stack.new
       while !list.data.nil?
         new_list.push(list.pop)
       end   
     new_list
end

stack = Stack.new
stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)
new_list = reverse_list(stack)
puts new_list.pop
puts new_list.pop
puts new_list.pop
puts new_list.pop 



