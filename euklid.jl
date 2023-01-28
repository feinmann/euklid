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




