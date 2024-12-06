disks = ['d1', 'd2']
pegs = ['p1', 'p2', 'p3']
items = ['d1', 'd2', 'p1', 'p2', 'p3']
time_points = [0, 1, 2, 3, 4, 5, 6]

time_point_arrays = [[] for _ in range(len(time_points))]


def frameAx_clear(item1, items, timestamp, pegs):
    arr = []
    for item in items:
        if (item != item1) and item not in pegs and (not (item == 'd2' and item1 == 'd1')):
            if timestamp == 0:
                arr.append(f"(or (:iff clear_{item1}_{timestamp} clear_{item1}_{timestamp+1}) (or pick-up_{item}_{item1}_{timestamp}))")
            else:
                arr.append(f"(or (:iff clear_{item1}_{timestamp} clear_{item1}_{timestamp+1}) (or pick-up_{item}_{item1}_{timestamp} put-down_{item}_{item1}_{timestamp}))")
    return  arr

def frameAx_holding(item1, items, timestamp):
    arr = []
    for item in items:
        if (item != item1) and (not (item1 == 'd2' and item == 'd1')):
            if timestamp == 0:
                arr.append(f"(or (:iff holding_{item1}_{timestamp} holding_{item1}_{timestamp+1}) (or pick-up_{item1}_{item}_{timestamp}))")
            else:
                arr.append(f"(or (:iff holding_{item1}_{timestamp} holding_{item1}_{timestamp+1}) (or pick-up_{item1}_{item}_{timestamp} put-down_{item1}_{item}_{timestamp}))")
    return arr

def frameAx_on(item1, item2, items, timestamp):
    arr = []
    for i1 in items:
        if (item1 != i1) and (i1 != item2) and (not (item1 == 'd2' and i1 == 'd1')):
            if item1 == 'd1':
                other_disk = 'd2'
            else: 
                other_disk = 'd1'
            if (other_disk != item2):
                if timestamp == 0:
                    arr.append(f"(or (:iff on_{item1}_{item2}_{timestamp} on_{item1}_{item2}_{timestamp+1}) (or pick-up_{item1}_{i1}_{timestamp} put-down_{item1}_{i1}_{timestamp} pick-up_{other_disk}_{item2}_{timestamp}))")
                else:
                    arr.append(f"(or (:iff on_{item1}_{item2}_{timestamp} on_{item1}_{item2}_{timestamp+1}) (or pick-up_{item1}_{i1}_{timestamp} put-down_{item1}_{i1}_{timestamp} pick-up_{other_disk}_{item2}_{timestamp} put-down_{other_disk}_{item2}_{timestamp}))")
    return arr

def frameAx_smaller(item1, item2, timestamp):
    arr = []
    arr.append(f"(:iff smaller_{item1}_{item2}_{timestamp} smaller_{item1}_{item2}_{timestamp+1})")
    return arr

def frameAx_handempty(item1, item2, timestamp):
    arr = []
    if timestamp == 0:
        arr.append(f"(or (:iff handempty_{timestamp} handempty_{timestamp+1}) (or pick-up_{item1}_{item2}_{timestamp}))")

    else:
        arr.append(f"(or (:iff handempty_{timestamp} handempty_{timestamp+1}) (or pick-up_{item1}_{item2}_{timestamp} put-down_{item1}_{item2}_{timestamp}))")
    return arr

arr_clear = []
arr_holding = []
arr_on = []
arr_smaller = []
arr_handempty = []

for item in items:
    for t in range(0, len(time_points) - 1):
        arr_clear.append(frameAx_clear(item, items, t, pegs))

        if item not in pegs:
            arr_holding.append(frameAx_holding(item, items, t))

for item1 in items:
    for item2 in items:
        for t in range(0, len(time_points)-1):
            if (item1 != item2) and (item1 not in pegs) and (not (item1 == 'd2' and item2 == 'd1')):
                arr_on.append(frameAx_on(item1, item2, items, t))
                arr_smaller.append(frameAx_smaller(item1, item2, t))

for item1 in items:
    for item2 in items:
        for t in range(0, len(time_points)-1):
            if (item1 != item2) and (item1 not in pegs) and (not (item1 == 'd2' and item2 == 'd1')):
                arr_handempty.append(frameAx_handempty(item1, item2, t))

print("-------CLEAR-------")
for arr in arr_clear:
    for statement in arr:
        print(statement)
print("-------HOLDING-------")
for arr in arr_holding:
    for statement in arr:
        print(statement)
print("-------ON-------")
for arr in arr_on:
    for statement in arr:
        print(statement)
print("-------SMALLER-------")
for arr in arr_smaller:
    for statement in arr:
        print(statement)
print("-------HANDEMPTY-------")
for arr in arr_handempty:
    for statement in arr:
        print(statement)