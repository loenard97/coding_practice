# 7. Flatten a nested list structure. (medium)

def flatten(l):
    res = []

    for e in l:
        if isinstance(e, list):
            res.extend(flatten(e))
        else:
            res.extend(e)

    return res


l = ["a", ["b", ["c", "d"], "e"]]
print(flatten(l))
