# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    if digits and ! digits.empty?
        c = 1
        total = digits.size
        (0..total - 1).each { |i|
            digit = digits[ total - 1 - i ]
            digit = digit + c
            c = digit / 10
            digit = digit % 10
            digits[ total - 1 - i ] = digit
            if c == 0
                break
            end
        }
        if c != 0
            digits.unshift c
        end
    end
    return digits
end
