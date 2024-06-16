# 6. Find out whether a list is a palindrome. (easy)

def is_palindrome(l):
    return l == l[::-1]


l = ["x", "a", "m", "a", "x"]
print(is_palindrome(l))
