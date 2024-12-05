disks = ['d1', 'd2']
pegs = ['p1', 'p2', 'p3']
items = ['d1', 'd2', 'p1', 'p2', 'p3']
time_points = [0, 1, 2, 3, 4, 5, 6]

def mutual_exclusion_pickup(item1, item2, items, pegs, timestamp):
    arr = []
    for i1 in items:
        for i2 in items:
            if (not (item1 == i1 and item2 == i2)) and i1 not in pegs and (i1 != i2) and (not (i1 == 'd2' and i2 == 'd1')):
                if (timestamp == 0):
                    arr.append(f"(:implies pick-up_{item1}_{item2}_{timestamp} (and (not pick-up_{i1}_{i2}_{timestamp})))")
                else:
                    arr.append(f"(:implies pick-up_{item1}_{item2}_{timestamp} (and (not pick-up_{i1}_{i2}_{timestamp}) (not put-down_{i1}_{i2}_{timestamp})))")
    return arr

def mutual_exclusion_putdown(item1, item2, items, pegs, timestamp):
    arr = []
    for i1 in items:
        for i2 in items:
            if (not (item1 == i1 and item2 == i2)) and i1 not in pegs and (i1 != i2) and (not (i1 == 'd2' and i2 == 'd1')):
                if (timestamp == 0):
                    continue
                else:
                    arr.append(f"(:implies put-down_{item1}_{item2}_{timestamp} (and (not pick-up_{i1}_{i2}_{timestamp}) (not put-down_{i1}_{i2}_{timestamp})))")
    return arr


mutual_exclusion_rules = []
for item1 in items:
    for item2 in items:
        for t in range(0, len(time_points)-1):
            if (item1 != item2) and (item1 not in pegs) and (not (item1 == 'd2' and item2 == 'd1')):

                mutual_exclusion_rules.append(mutual_exclusion_pickup(item1, item2, items, pegs, t))
                mutual_exclusion_rules.append(mutual_exclusion_putdown(item1, item2, items, pegs, t))

for arr in mutual_exclusion_rules:
    for statement in arr:
        print(statement)