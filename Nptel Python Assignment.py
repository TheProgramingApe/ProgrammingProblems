###########################
### week 2 assignment
###
###########################
def ascending(list):
    for i in range(len(list) - 1):
        if list[i] > list[i+1]:
            return False
    return True

def transpose(matrix):
    t_matrix = [[] for _ in range(len(matrix[0]))]
    for i in range(len(matrix)):
        for j in range(len(matrix[0])):
            t_matrix[j].append(matrix[i][j])
    return t_matrix

def valley(list):
    if len(list) <= 1:
        return False
    if list[0] <= list[1]:
        return False
    down = True
    for i in range(len(list) - 1):
        down = not list[i] < list[i+1]
        if down:
            if list[i] <= list[i+1]:
                return False
        else:
            if list[i] >= list[i+1]:
                return False
    return True

###########################
### week 3 assignment   ###
###########################

def perfect(a):
    import math
    sum = 0
    for i in range(1, a-1):
        if a % i is 0:
            sum += i
    if sum == a:
        return True
    return False

def depth(s):
    if not "(" in s:
        return 0
    c_depth = 0
    depth = 0
    for i in s:
        if i is "(":
            c_depth += 1
        elif i is ")":
            c_depth -= 1
        if c_depth > depth:
            depth = c_depth
    return depth

def sumsquares(l):
    import math
    sum = 0
    for i in l:
        sqrt = math.sqrt(i)
        if sqrt - math.floor(sqrt) == 0:
            sum += i
    return sum

###########################
### week 4 a assignment ###
###########################

def frequency(l):
    occ = {}
    for i in l:
        occ[i] = 1 if occ.get(i) is None else occ[i] + 1
    min_freq = [list(occ.keys())[0]]
    max_freq = [list(occ.keys())[0]]
    for i in occ:
        if occ[i] > occ[max_freq[0]]:
            max_freq = [i]
        elif occ[i] == occ[max_freq[0]]:
            if i != max_freq[0]:
                max_freq.append(i)
        if occ[i] < occ[min_freq[0]]:
            min_freq = [i]
        elif occ[i] == occ[min_freq[0]]:
            if i != min_freq[0]:
                min_freq.append(i)
    min_freq.sort()
    max_freq.sort()
    return (min_freq, max_freq)

def onehop(l):
    a = []
    for i in l:
        for j in l:
            if i is j:
                continue
            if i[1] is j[0]:
                continue
            if i[0] is j[1]:
                a.append((j[0], i[1]))
    a.sort()
    return a
