def fibonacci(n)
    return [0] if n == 1
    return [0,1] if n == 2
    array = fibonacci(n-1)
    array.push(array[-1] + array[-2])
end
puts fibonacci(8)