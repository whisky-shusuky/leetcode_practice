# @param {Integer[]} nums
# @return {Integer[]}
# numsに与えられた数字の入った配列内でその数字自身よりも低い数を数える
def smaller_numbers_than_current(nums)
    result_array = []
    nums.each {|num|
        smaller_count=0
        nums.each{|other_num|
            smaller_count = smaller_count + 1 if num > other_num
        }
        result_array.push(smaller_count)
    }
    result_array
end

# めっちゃ簡単な方法があった
def smaller_numbers_than_current(nums)
    sorted_nums = nums.sort
    nums.map {|num| 
        p sorted_nums.index(num)
        sorted_nums.index(num)
    } 
end