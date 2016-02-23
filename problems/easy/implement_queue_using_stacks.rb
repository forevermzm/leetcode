class Queue
    # Initialize your data structure here.
    def initialize
        @stack = []
    end

    # @param {Integer} x
    # @return {void}
    def push(x)
        temp_reversed_stack = []
        while ! @stack.empty?
            temp_reversed_stack.push @stack.pop
        end
        temp_reversed_stack.push x
        while ! temp_reversed_stack.empty?
            @stack.push temp_reversed_stack.pop
        end
    end

    # @return {void}
    def pop
        @stack.pop
    end

    # @return {Integer}
    def peek
        @stack.last
    end

    # @return {Boolean}
    def empty
        @stack.empty?
    end
end
