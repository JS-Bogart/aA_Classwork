class Array
    def my_uniq
        hash = Hash.new(0)
        self.each { |ele| hash[ele] += 1 }
        answer = []
        hash.each_key { |ele| answer << ele }
        answer
    end

    def two_sum
        answer = []
        self.each_with_index do |num1, idx1|
            self.each_with_index do |num2, idx2|
                if idx1 < idx2 && num1 + num2 == 0
                    answer << [idx1, idx2]
                end
            end
        end
        answer
    end
end

def my_transpose(matrix)
    answer = []

    matrix.each_with_index do |col, idx1|
        new_row = []
        matrix.each_with_index do |row, idx2|
            new_row << matrix[idx2][idx1]
        end
        answer << new_row
    end

    answer
end
