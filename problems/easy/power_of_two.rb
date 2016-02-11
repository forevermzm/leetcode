# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
    if n <= 0
        false
    elsif n == 1 or n == 2
        true
    elsif n % 2 == 0
        is_power_of_two n / 2
    else
        false
    end
end
