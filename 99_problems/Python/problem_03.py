# 3. Find the K'th element of a list. (easy)

def at(l, k):
    return l[k - 1] if k < len(l) + 1 else None


l = ["a", "b", "c", "d"]
print(at(l, 3))
