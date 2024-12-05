disks = ['d1', 'd2']
pegs = ['p1', 'p2', 'p3']
items = ['d1', 'd2', 'p1', 'p2', 'p3']

time_points = [0, 1, 2, 3, 4, 5, 6]


# (:implies pick-up_d1_p1_0 (and (not pick-up_d1_p2_0)
#                               (not pick-up_d1_p3_0)
#                               (not pick-up_d2_p1_0)
#                               (not pick-up_d2_p2_0)
#                               (not pick-up_d2_p3_0)
#                               (not put-down_d1_p1_0)
#                               (not put-down_d1_p2_0)
#                               (not put-down_d1_p3_0)
#                               (not put-down_d2_p1_0)
#                               (not put-down_d2_p2_0)
#                               (not put-down_d2_p3_0)
# ))

def generate_comments(disks, pegs, time_points):
    # for disk in disks:
    #     for peg in pegs:
    #         for t in time_points:
    #             action = f"pick-up_{disk}_{peg}_{t}"
    #             conditions = []

    #             for d in disks:
    #                 for p in pegs:
    #                     # Exclude the specific action currently being processed
    #                     if not (d == disk and p == peg):
    #                         conditions.append(f"(not pick-up_{d}_{p}_{t})")
    #                     conditions.append(f"(not put-down_{d}_{p}_{t})")

    #             # Combine all conditions into a single string with indentation
    #             condition_str = " ".join(conditions)
    #             print(f"(:implies {action} (and {condition_str}))\n")

    for item1 in items:
        for item2 in items:
            for t in time_points:
                if (item1 != item2 and item1 not in pegs):
                    action = f"pick-up_{item1}_{item2}_{t}"
                    conditions = []
                    print (item1, item2, t)
                    for i1 in items:
                        for i2 in items:
                            # Exclude the specific action currently being processed
                            if ((i1 != item1 and i2 != item2) and (i1 != i2) and i1 not in pegs):
                                conditions.append(f"(not pick-up_{i1}_{i2}_{t})")
                                conditions.append(f"(not put-down_{i1}_{i2}_{t})")

                    # Combine all conditions into a single string with indentation
                    condition_str = " ".join(conditions)
                    print(f"(:implies {action} (and {condition_str}))\n")
                

# Example usage
# disks = ['d1', 'd2']
# pegs = ['p1', 'p2', 'p3']
# time_points = [0, 1, 2, 3, 4, 5, 6]

generate_comments(disks, pegs, time_points)



# def action_validation_pickup(disk, from_surface, timestamp):

#    return (f"(: implies (clear_{disk}_{timestamp} and on_{disk}_{from_surface}_{timestamp} and handempty_{timestamp}) (not(handempty_{timestamp}) and holding_{disk}_{timestamp} and clear_{from_surface}_{timestamp} and not(on_{disk}_{from_surface})))")
   
#    # Pick-up actions for Disk 1 and Disk 2
#    # formula.append("(pick-up_1_1) (:implies (clear_1 and on_1_1 and handempty) (not(handempty) and holding_1 and clear_1 and not(on_1_1)))")
#    # formula.append("(pick-up_2_1) (:implies (clear_2 and on_2_1 and handempty) (not(handempty) and holding_2 and clear_1 and not(on_2_1)))")

#    # Put-down actions for Disk 1 and Disk 2
#    # formula.append("(put-down_1_3) (:implies (clear_3 and holding_1 => handempty and not(clear_3) and on_1_3 and not(holding_1)))")
#    # formula.append("(put-down_2_3) (:implies (clear_3 and holding_2 => handempty and not(clear_3) and on_2_3 and not(holding_2)))")

# def action_validation_putdown(disk, to_surface, timestamp):

#    return (f"(: implies (clear_{to_surface}_{timestamp} and holding_{disk}_{timestamp}) (handempty_{timestamp} and not(clear_{to_surface}_{timestamp}) and on_{disk}_{to_surface}_{timestamp} and not(holding_{disk}_{timestamp})))")

# for disk in disks:
#         for peg in pegs:
#             for t in time_points:
#                 print(action_validation_pickup(disk, peg, t))

