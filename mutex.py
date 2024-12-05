disks = ['d1', 'd2']
pegs = ['p1', 'p2', 'p3']
items = ['d1', 'd2', 'p1', 'p2', 'p3']
time_points = [0, 1, 2, 3, 4, 5, 6]

def mutual_exclusion_pickup(item1, item2, timestamp):
    exclusions = []

    exclusions.append(f"(not pick-up_{item1}_{item2}_{timestamp})")
    exclusions.append(f"(not put-down_{item1}_{item2}_{timestamp})")

    return f"(:implies pick-up_{item1}_{item2}_{timestamp} (and {' '.join(exclusions)}))"

def mutual_exclusion_putdown(item1, item2, timestamp):
    exclusions = []

    exclusions.append(f"(not pick-up_{item1}_{item2}_{timestamp})")
    exclusions.append(f"(not put-down_{item1}_{item2}_{timestamp})")

    return f"(:implies pick-up_{item1}_{item2}_{timestamp} (and {' '.join(exclusions)}))"

mutual_exclusion_rules = []
for item1 in items:
    for item2 in items:
        for t in time_points:
            if (item1 != item2) and (item1 not in pegs) and (not (item1 == 'd2' and item2 == 'd1')):

                print(mutual_exclusion_pickup(item1, item2, t))
                mutual_exclusion_rules.append(mutual_exclusion_pickup(item1, item2, t))

                print(mutual_exclusion_putdown(item1, item2, t))
                mutual_exclusion_rules.append(mutual_exclusion_pickup(item1, item2, t))

print(len(mutual_exclusion_rules))