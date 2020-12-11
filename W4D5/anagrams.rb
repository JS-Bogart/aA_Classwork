def anagram?(str1, str2)
    return false if str1.length != str2.length
    anagram = str1.chars.permutation(str1.length).map { |ele| ele.join("") }
    anagram.include?(str2)
end

p anagram?("gizmo", "sally")    #=> false
p anagram?("elvis", "lives")    #=> true