class Stack
    # Initialize your data structure here.
    def initialize
        @data = []
    end

    # @param {Integer} x
    # @return {void}
    def push(x)
        new_data = [ x ]
        while ! @data.empty?
            new_data.push @data.shift
        end
        @data = new_data
        nil
    end

    # @return {void}
    def pop
        @data.shift
        nil
    end

    # @return {Integer}
    def top
        @data.first
    end

    # @return {Boolean}
    def empty
        @data.empty?
    end
end
