# @param {String} address
# @return {String}
# ipの"."を"[.]"に変換する。
def defang_i_paddr(address)
    result = address.gsub(".", "[.]")
end
