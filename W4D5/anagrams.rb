#TC O(n!), SC O(n!)
def first_anagram?(str1, str2)
    return false if str1.length != str2.length
    anagram = str1.chars.permutation(str1.length).map { |ele| ele.join("") }
    anagram.include?(str2)
end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

#TC O(n^2), SC O(n)
def second_anagram?(str1, str2)
    return false if str1.length != str2.length

    str2_arr = str2.chars # O(n)
    str1.each_char do |chr| #O(n)
        idx = str2_arr.find_index(chr) # O(n)
        return false if idx.nil?
        str2_arr.delete_at(idx)
    end
    str2_arr.empty?
end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true