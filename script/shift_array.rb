# @param {Integer[]} nums
# @return {Integer[]}
# [1,2,3,4]こういう配列なら2を1つ、4を3つつけた配列[2,4,4,4]を返す
def decompress_rl_elist(nums)
    result_array = []
    while nums.count > 0 do
        freq = nums.shift
        val = nums.shift
        freq.times do |i|
            result_array.push(val)
        end
    end
    result_array
end