# @param {Integer} n
# @return {Integer}
# 
# 数字を一旦文字列として扱いかけたり足したりする
# Input: n = 234
# Output: 15 
# Explanation: 
# Product of digits = 2 * 3 * 4 = 24 
# Sum of digits = 2 + 3 + 4 = 9 
# Result = 24 - 9 = 15
def subtract_product_and_sum(n)
    separated_numbers = n.to_s.split("",0)
    first_num = separated_numbers.shift.to_i
    multi_sum = first_num
    separated_numbers.each {|number| multi_sum *= number.to_i}
    add_sum = first_num
    separated_numbers.each {|number| add_sum += number.to_i}
    multi_sum - add_sum
end