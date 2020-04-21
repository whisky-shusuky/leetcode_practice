# @param {Integer[]} nums
# @return {Integer[]}
# 数値の配列numsを文字列として解釈して文字数が偶数の物の数を返す
def find_numbers(nums)
    digits_count = 0
    nums.each{|num|
        digits_count = digits_count + 1 if num.to_s.length % 2 == 0
    }
    digits_count
end