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


def stock_picker(stock_prices)
    lowest_price = stock_prices[0]
    lowest_day = 0

    highest_price = stock_prices[0]
    highest_day = 0

    (1...stock_prices.length).each do |day|
        if stock_prices[day] < lowest_price
            lowest_price = stock_prices[day]
            lowest_day = day
        end
    end

    (1...stock_prices.length).each do |day|
        if stock_prices[day] > highest_price && day > lowest_day
            highest_price = stock_prices[day]
            highest_day = day
        end
    end

    [lowest_day, highest_day]
end
