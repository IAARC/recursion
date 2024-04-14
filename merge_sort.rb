require 'pry-byebug'
def merge(array0, array1)
    i = 0
    u = 0
    merge_array = []
    until merge_array.length == array0.length + array1.length
        if i == array0.length
            return merge_array << array1.drop(u)
        elsif u == array1.length
            return merge_array << array0.drop(i)
        elsif array0[i] <= array1[u]
            merge_array.push(array0[i])
            i += 1
        else
            merge_array.push(array1[u])
            u += 1
        end
    end
end


def merge_sort(array)
    return array if array.length == 1

    left_half = array.take( array.length / 2)
    rigth_half = array.drop( (array.length) / 2)
    merge(merge_sort(left_half).flatten, merge_sort(rigth_half).flatten)
end
puts merge_sort([3, 2, 1, 13, 8, 5, 0, 1, 100, 32, 342, 342, 12, 01, 32,52,76])
