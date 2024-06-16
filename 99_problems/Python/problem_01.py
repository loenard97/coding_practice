# 1. Write a function last : 'a list -> 'a option that returns the last element of a list. (easy)

def last(l):
    return l[-1]


l = ["a", "b", "c", "d"]
print(last(l))
