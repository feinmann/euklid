# pseudo-code
###############################################
# function euklid(n1, n2):
#   if n1 == n2 return n1
#   if n1 > n2 then greater = n1, smaller = n2
#   else greater = n2, smaller = n1
#   reminder = greater modulo smaller
#   if reminder == 0 return smaller
#   else greater = smaller, smaller = reminder
#   start with reminder = greater modulo smaller
#   
#  test:
#  euklid(12, 16) 
#  > 4

function euklid(n1, n2)
    if n1 == n2
        return n1
    elseif n1 > n1
        greater = n1
        smaller = n2
    else
        greater = n2
        smaller = n1
    end
    reminder = mod(greater, smaller)
    if reminder == 0
        return smaller
    end
    while mod(greater, smaller) != 0
        greater = smaller
        smaller = reminder
        reminder = mod(greater, smaller)
    end
    return smaller
end

function euklid2(a, b)
    if b == 0
        return a
    else
        return euklid2(b, mod(a, b))
    end
end

function gcd2(a, b)
    neg = a < 0
    while b != 0
        t = b
        b = rem(a, b)
        a = t
    end
    g = abs(a)
    neg ? -g : g
end

dim_size = 500
number_vec1 = floor.(collect(range(1, 50000; length=dim_size)))
number_vec2 = floor.(collect(range(1, 50000; length=dim_size)))

my_matrix = zeros(dim_size, dim_size);
for (index1, n1) in enumerate(number_vec1)
    for (index2, n2) in enumerate(number_vec2)
        my_matrix[index1, index2] = euklid(n1, n2)
    end
end

heatmap(my_matrix)