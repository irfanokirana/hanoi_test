disks = ['d1', 'd2']
pegs = ['p1', 'p2', 'p3']
items = ['d1', 'd2', 'p1', 'p2', 'p3']

time_points = [0, 1, 2, 3, 4, 5, 6]

def action_validation_pickup(disk, from_surface, timestamp):

   return (f"(: implies pickup_{disk}_{from_surface}_{timestamp} (and clear_{disk}_{timestamp} on_{disk}_{from_surface}_{timestamp} handempty_{timestamp}) (and (not handempty_{timestamp}) holding_{disk}_{timestamp} clear_{from_surface}_{timestamp} (not on_{disk}_{from_surface})))")
   
   # Pick-up actions for Disk 1 and Disk 2
   # formula.append("(pick-up_1_1) (:implies (clear_1 and on_1_1 and handempty) (not(handempty) and holding_1 and clear_1 and not(on_1_1)))")
   # formula.append("(pick-up_2_1) (:implies (clear_2 and on_2_1 and handempty) (not(handempty) and holding_2 and clear_1 and not(on_2_1)))")

   # Put-down actions for Disk 1 and Disk 2
   # formula.append("(put-down_1_3) (:implies (clear_3 and holding_1 => handempty and not(clear_3) and on_1_3 and not(holding_1)))")
   # formula.append("(put-down_2_3) (:implies (clear_3 and holding_2 => handempty and not(clear_3) and on_2_3 and not(holding_2)))")

def action_validation_putdown(disk, to_surface, timestamp):

   return (f"(: implies putdown_{disk}_{to_surface}_{timestamp} (and clear_{to_surface}_{timestamp} holding_{disk}_{timestamp} smaller_{disk}_{to_surface}_{timestamp}) (and handempty_{timestamp} (not clear_{to_surface}_{timestamp}) on_{disk}_{to_surface}_{timestamp} (not holding_{disk}_{timestamp})))") 

actions_list = []
for item1 in items:
   for item2 in items:
      for t in time_points:
         if (item1 != item2) and (item1 not in pegs) and (not (item1 == 'd2' and item2 == 'd1')):
            print(action_validation_pickup(item1, item2, t))
            actions_list.append(action_validation_pickup(item1, item2, t))
            print(action_validation_putdown(item1, item2, t))
            actions_list.append(action_validation_putdown(item1, item2, t))
   
print(len(actions_list))