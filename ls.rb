def middle_way(ls1,ls2)
    x = [0,0]
    if ls1.size % 2 == 1
        x[0] = ls1[ls1.size / 2]
    else
        x[0] = ls1[ls1.size / 2]+ ls1[((ls1.size / 2) - 1) / 2.0]
    end
    if ls2.size % 2 == 1
        x[1] = ls2[ls2.size / 2]
    else
        x[1] = ls2[ls2.size / 2] + ls2[((ls2.size / 2) - 1) / 2.0]
    end
    return x[0..1]
end


# print middle_way([1,2,3],[2,3,74])

def g_happy(str)
    (str.size-1).times do |c|
        slice = str[c..c+1] 
        if slice == "gg" && 
            puts 
        end
    end
    return false
end

# puts g_happy("Aggabg")

def merge(ls1,ls2)
    ls1_item1 = 0
    ls1_item2 = 1
    ls2_item1 = 0
    ls2_item2 = 1
    memory = 0
    ls1.size.times do
        if ls1[ls1_item1] > list[list_item2]
            memory = list[list_item2]
            list[list_item2] = list[list_item1] 
            list[list_item1] = memory
            list_item2 = list_item1 + 1
        else
            list_item2 = list_item2 + 1
        end
    end
    list_item1 = list_item1 + 1
    new_list = ls1 + ls2
    return new_list 
end

# print merge([1,2,3],[4,5,6])

def count_code(str)
    count = 0
    (str.size-1).times do |c|
        slice = str[c..c+1]
        slice2 = str[c+3]
        if slice == "co" && slice2 == "e"
            count += 1
        end
    end
    return count
end

# puts count_code("codesleacoae")

def shift_left(list)
    index = 0
    new_list = []
    list.each do |n|
        if index == 0
            list[list.size] = 0
        end
        list[index - 1] = n
        index += 1
    end
    new_list = list[0..(list.size - 2)]
    return new_list
end

# print shift_left([1,2,3,4,7,8,9])

def get_sandwich(str)
    (str.size-1).times do |c|
        slice = str[c..c+4]
        if slice == "bread" 
            return 
        end
    end
end

# puts get_sandwich("breadpoopbread")

def either24(list)
    x = 0
    count = 0
    list.each do |n|
        if n == 2 || n == 4
            if list[x] == list[x+1]
                count += 1
            end
        end
        x += 1
    end
    if count != 1
        return false
    end
    return true
end

# puts either24([2,2,2,2,6])

def max_span(list)
    max_count = 0
    list.each do |n|
        count = 0
        list.each do |m|
            if n != m
                count += 1
            end
        end
        if count > max_count
            max_count = count
        end
    end
    return max_count 
end


# puts max_span([1,2,2,2,2,2,2,2,2,2,2,1,1])


def can_balance(list)
    list.size.times do |x|
        second_half = list[(x)...list.size]
        first_half = list[0...x]
        sum_1 = 0
        sum_2 = 0
        # puts "First half is #{first_half}, second half is #{second_half}"
        first_half.each do |b|
            sum_1 += b
        end
        second_half.each do |b|
            sum_2 += b
        end
        if sum_1 == sum_2
            return true
        end
    end
    return false
end

print can_balance([1,2,3,3,2,1])