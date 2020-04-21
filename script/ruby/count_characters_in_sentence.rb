# @param {String} j
# @param {String} s
# @return {Integer}
# j に入った文字列がsに幾つ入っているかカウントする。
def num_jewels_in_stones(j, s)
    count = 0
    jewels = j.chars
    s.chars.each {|stone|
        next unless jewels.include?(stone)
        count += 1
    }
    count
end

