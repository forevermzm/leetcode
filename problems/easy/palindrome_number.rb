# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    if x < 0
        return false
    end
    divide_first = 1
    while x / divide_first >= 10
        divide_first = divide_first * 10
    end
    divide_last = 1
    while divide_first > divide_last
        if ( x % ( divide_first * 10 ) / divide_first ) == ( x % ( divide_last * 10 ) ) / divide_last
            divide_first = divide_first / 10
            divide_last = divide_last * 10
        else
            return false
        end
    end
    return true
end
