disks = ['d1', 'd2']
pegs = ['p1', 'p2', 'p3']
items = ['d1', 'd2', 'p1', 'p2', 'p3']
time_points = [0, 1, 2, 3, 4, 5, 6]

def mutual_exclusion_pickup(item1, item2, timestamp):
    exclusions = []
    # Ensure no other disk actions happen at the same timestamp
    for other_item1 in items:
        for other_item2 in items:
            if (other_item1 != item1 or other_item2 != item2):  # Exclude the current action
                exclusions.append(f"\n(not pick-up_{other_item1}_{other_item2}_{timestamp})")
                exclusions.append(f"\n(not put-down_{other_item1}_{other_item2}_{timestamp})")
    return f"\n(:implies pick-up_{item1}_{item2}_{timestamp} (and {' '.join(exclusions)}))"

def mutual_exclusion_putdown(item1, item2, timestamp):
    exclusions = []
    # Ensure no other disk actions happen at the same timestamp
    for other_item1 in items:
        for other_item2 in items:
            if (other_item1 != item1 or other_item2 != item2):  # Exclude the current action
                exclusions.append(f"\n(not pick-up_{other_item1}_{other_item2}_{timestamp})")
                exclusions.append(f"\n(not put-down_{other_item1}_{other_item2}_{timestamp})")
    return f"\n(:implies put-down_{item1}_{item2}_{timestamp} (and {' '.join(exclusions)}))"

mutual_exclusion_rules = []
for item1 in items:
    for item2 in items:
        for t in time_points:
            if (item1 != item2) and (item1 not in pegs) and (not (item1 == 'd2' and item2 == 'd1')):
                # Generate mutual exclusion rules for pick-up and put-down
                mutual_exclusion_rules.append(mutual_exclusion_pickup(item1, item2, t))
                mutual_exclusion_rules.append(mutual_exclusion_putdown(item1, item2, t))

# Output the mutual exclusion rules
for rule in mutual_exclusion_rules:
    print('\n' + rule)

# Print the total number of mutual exclusion rules
print(len(mutual_exclusion_rules))
