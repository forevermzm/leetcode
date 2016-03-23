# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
    result = 0
    divider = 5
    while n >= divider
        result = result + n / divider
        divider = divider * 5
    end
    result
end
