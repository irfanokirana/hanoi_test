'(and 
;; start
handempty_0
(not holding_d1_0)
(not holding_d2_0)
on_d1_d2_0
on_d2_p1_0
(not on_d1_p1_0)
(not on_d1_p2_0)
(not on_d1_p3_0)
(not on_d2_d1_0)
(not on_d2_p2_0)
(not on_d2_p3_0)
clear_d1_0
clear_p2_0
clear_p3_0
(not clear_d2_0)
(not clear_p1_0)
smaller_d1_d2_0
smaller_d1_p1_0
smaller_d1_p2_0
smaller_d1_p3_0
smaller_d2_p1_0
smaller_d2_p2_0
smaller_d2_p3_0
(not smaller_d2_d1_0)
(not smaller_p1_d1_0)
(not smaller_p2_d1_0)
(not smaller_p3_d1_0)
(not smaller_p1_d2_0)
(not smaller_p2_d2_0)
(not smaller_p3_d2_0)
smaller_d1_d2_1
smaller_d1_p1_1
smaller_d1_p2_1
smaller_d1_p3_1
smaller_d2_p1_1
smaller_d2_p2_1
smaller_d2_p3_1
(not smaller_d2_d1_1)
(not smaller_p1_d1_1)
(not smaller_p2_d1_1)
(not smaller_p3_d1_1)
(not smaller_p1_d2_1)
(not smaller_p2_d2_1)
(not smaller_p3_d2_1)
smaller_d1_d2_2
smaller_d1_p1_2
smaller_d1_p2_2
smaller_d1_p3_2
smaller_d2_p1_2
smaller_d2_p2_2
smaller_d2_p3_2
(not smaller_d2_d1_2)
(not smaller_p1_d1_2)
(not smaller_p2_d1_2)
(not smaller_p3_d1_2)
(not smaller_p1_d2_2)
(not smaller_p2_d2_2)
(not smaller_p3_d2_2)
smaller_d1_d2_3
smaller_d1_p1_3
smaller_d1_p2_3
smaller_d1_p3_3
smaller_d2_p1_3
smaller_d2_p2_3
smaller_d2_p3_3
(not smaller_d2_d1_3)
(not smaller_p1_d1_3)
(not smaller_p2_d1_3)
(not smaller_p3_d1_3)
(not smaller_p1_d2_3)
(not smaller_p2_d2_3)
(not smaller_p3_d2_3)
smaller_d1_d2_4
smaller_d1_p1_4
smaller_d1_p2_4
smaller_d1_p3_4
smaller_d2_p1_4
smaller_d2_p2_4
smaller_d2_p3_4
(not smaller_d2_d1_4)
(not smaller_p1_d1_4)
(not smaller_p2_d1_4)
(not smaller_p3_d1_4)
(not smaller_p1_d2_4)
(not smaller_p2_d2_4)
(not smaller_p3_d2_4)
smaller_d1_d2_5
smaller_d1_p1_5
smaller_d1_p2_5
smaller_d1_p3_5
smaller_d2_p1_5
smaller_d2_p2_5
smaller_d2_p3_5
(not smaller_d2_d1_5)
(not smaller_p1_d1_5)
(not smaller_p2_d1_5)
(not smaller_p3_d1_5)
(not smaller_p1_d2_5)
(not smaller_p2_d2_5)
(not smaller_p3_d2_5)
smaller_d1_d2_6
smaller_d1_p1_6
smaller_d1_p2_6
smaller_d1_p3_6
smaller_d2_p1_6
smaller_d2_p2_6
smaller_d2_p3_6
(not smaller_d2_d1_6)
(not smaller_p1_d1_6)
(not smaller_p2_d1_6)
(not smaller_p3_d1_6)
(not smaller_p1_d2_6)
(not smaller_p2_d2_6)
(not smaller_p3_d2_6)
;; goal
on_d1_d2_6
on_d2_p3_6
clear_p1_6
clear_p2_6
clear_d1_6
handempty_6
(not holding_d1_6)
(not holding_d2_6)
;; frame axioms

;; mutual exclusion
(:implies pick-up_d1_p1_0 (and (not put-down_d1_p1_0) (not pick-up_d1_p2_0) (not put-down_d1_p2_0) (not pick-up_d1_p3_0) (not put-down_d1_p3_0) (not pick-up_d2_p1_0) (not put-down_d2_p1_0) (not pick-up_d2_p2_0) (not put-down_d2_p2_0) (not pick-up_d2_p3_0) (not put-down_d2_p3_0)))
(:implies pick-up_d1_p1_1 (and (not put-down_d1_p1_1) (not pick-up_d1_p2_1) (not put-down_d1_p2_1) (not pick-up_d1_p3_1) (not put-down_d1_p3_1) (not pick-up_d2_p1_1) (not put-down_d2_p1_1) (not pick-up_d2_p2_1) (not put-down_d2_p2_1) (not pick-up_d2_p3_1) (not put-down_d2_p3_1)))
(:implies pick-up_d1_p1_2 (and (not put-down_d1_p1_2) (not pick-up_d1_p2_2) (not put-down_d1_p2_2) (not pick-up_d1_p3_2) (not put-down_d1_p3_2) (not pick-up_d2_p1_2) (not put-down_d2_p1_2) (not pick-up_d2_p2_2) (not put-down_d2_p2_2) (not pick-up_d2_p3_2) (not put-down_d2_p3_2)))
(:implies pick-up_d1_p1_3 (and (not put-down_d1_p1_3) (not pick-up_d1_p2_3) (not put-down_d1_p2_3) (not pick-up_d1_p3_3) (not put-down_d1_p3_3) (not pick-up_d2_p1_3) (not put-down_d2_p1_3) (not pick-up_d2_p2_3) (not put-down_d2_p2_3) (not pick-up_d2_p3_3) (not put-down_d2_p3_3)))
(:implies pick-up_d1_p1_4 (and (not put-down_d1_p1_4) (not pick-up_d1_p2_4) (not put-down_d1_p2_4) (not pick-up_d1_p3_4) (not put-down_d1_p3_4) (not pick-up_d2_p1_4) (not put-down_d2_p1_4) (not pick-up_d2_p2_4) (not put-down_d2_p2_4) (not pick-up_d2_p3_4) (not put-down_d2_p3_4)))
(:implies pick-up_d1_p1_5 (and (not put-down_d1_p1_5) (not pick-up_d1_p2_5) (not put-down_d1_p2_5) (not pick-up_d1_p3_5) (not put-down_d1_p3_5) (not pick-up_d2_p1_5) (not put-down_d2_p1_5) (not pick-up_d2_p2_5) (not put-down_d2_p2_5) (not pick-up_d2_p3_5) (not put-down_d2_p3_5)))
(:implies pick-up_d1_p1_6 (and (not put-down_d1_p1_6) (not pick-up_d1_p2_6) (not put-down_d1_p2_6) (not pick-up_d1_p3_6) (not put-down_d1_p3_6) (not pick-up_d2_p1_6) (not put-down_d2_p1_6) (not pick-up_d2_p2_6) (not put-down_d2_p2_6) (not pick-up_d2_p3_6) (not put-down_d2_p3_6)))
(:implies pick-up_d1_p2_0 (and (not pick-up_d1_p1_0) (not put-down_d1_p1_0) (not put-down_d1_p2_0) (not pick-up_d1_p3_0) (not put-down_d1_p3_0) (not pick-up_d2_p1_0) (not put-down_d2_p1_0) (not pick-up_d2_p2_0) (not put-down_d2_p2_0) (not pick-up_d2_p3_0) (not put-down_d2_p3_0)))
(:implies pick-up_d1_p2_1 (and (not pick-up_d1_p1_1) (not put-down_d1_p1_1) (not put-down_d1_p2_1) (not pick-up_d1_p3_1) (not put-down_d1_p3_1) (not pick-up_d2_p1_1) (not put-down_d2_p1_1) (not pick-up_d2_p2_1) (not put-down_d2_p2_1) (not pick-up_d2_p3_1) (not put-down_d2_p3_1)))
(:implies pick-up_d1_p2_2 (and (not pick-up_d1_p1_2) (not put-down_d1_p1_2) (not put-down_d1_p2_2) (not pick-up_d1_p3_2) (not put-down_d1_p3_2) (not pick-up_d2_p1_2) (not put-down_d2_p1_2) (not pick-up_d2_p2_2) (not put-down_d2_p2_2) (not pick-up_d2_p3_2) (not put-down_d2_p3_2)))
(:implies pick-up_d1_p2_3 (and (not pick-up_d1_p1_3) (not put-down_d1_p1_3) (not put-down_d1_p2_3) (not pick-up_d1_p3_3) (not put-down_d1_p3_3) (not pick-up_d2_p1_3) (not put-down_d2_p1_3) (not pick-up_d2_p2_3) (not put-down_d2_p2_3) (not pick-up_d2_p3_3) (not put-down_d2_p3_3)))
(:implies pick-up_d1_p2_4 (and (not pick-up_d1_p1_4) (not put-down_d1_p1_4) (not put-down_d1_p2_4) (not pick-up_d1_p3_4) (not put-down_d1_p3_4) (not pick-up_d2_p1_4) (not put-down_d2_p1_4) (not pick-up_d2_p2_4) (not put-down_d2_p2_4) (not pick-up_d2_p3_4) (not put-down_d2_p3_4)))
(:implies pick-up_d1_p2_5 (and (not pick-up_d1_p1_5) (not put-down_d1_p1_5) (not put-down_d1_p2_5) (not pick-up_d1_p3_5) (not put-down_d1_p3_5) (not pick-up_d2_p1_5) (not put-down_d2_p1_5) (not pick-up_d2_p2_5) (not put-down_d2_p2_5) (not pick-up_d2_p3_5) (not put-down_d2_p3_5)))
(:implies pick-up_d1_p2_6 (and (not pick-up_d1_p1_6) (not put-down_d1_p1_6) (not put-down_d1_p2_6) (not pick-up_d1_p3_6) (not put-down_d1_p3_6) (not pick-up_d2_p1_6) (not put-down_d2_p1_6) (not pick-up_d2_p2_6) (not put-down_d2_p2_6) (not pick-up_d2_p3_6) (not put-down_d2_p3_6)))
(:implies pick-up_d1_p3_0 (and (not pick-up_d1_p1_0) (not put-down_d1_p1_0) (not pick-up_d1_p2_0) (not put-down_d1_p2_0) (not put-down_d1_p3_0) (not pick-up_d2_p1_0) (not put-down_d2_p1_0) (not pick-up_d2_p2_0) (not put-down_d2_p2_0) (not pick-up_d2_p3_0) (not put-down_d2_p3_0)))
(:implies pick-up_d1_p3_1 (and (not pick-up_d1_p1_1) (not put-down_d1_p1_1) (not pick-up_d1_p2_1) (not put-down_d1_p2_1) (not put-down_d1_p3_1) (not pick-up_d2_p1_1) (not put-down_d2_p1_1) (not pick-up_d2_p2_1) (not put-down_d2_p2_1) (not pick-up_d2_p3_1) (not put-down_d2_p3_1)))
(:implies pick-up_d1_p3_2 (and (not pick-up_d1_p1_2) (not put-down_d1_p1_2) (not pick-up_d1_p2_2) (not put-down_d1_p2_2) (not put-down_d1_p3_2) (not pick-up_d2_p1_2) (not put-down_d2_p1_2) (not pick-up_d2_p2_2) (not put-down_d2_p2_2) (not pick-up_d2_p3_2) (not put-down_d2_p3_2)))
(:implies pick-up_d1_p3_3 (and (not pick-up_d1_p1_3) (not put-down_d1_p1_3) (not pick-up_d1_p2_3) (not put-down_d1_p2_3) (not put-down_d1_p3_3) (not pick-up_d2_p1_3) (not put-down_d2_p1_3) (not pick-up_d2_p2_3) (not put-down_d2_p2_3) (not pick-up_d2_p3_3) (not put-down_d2_p3_3)))
(:implies pick-up_d1_p3_4 (and (not pick-up_d1_p1_4) (not put-down_d1_p1_4) (not pick-up_d1_p2_4) (not put-down_d1_p2_4) (not put-down_d1_p3_4) (not pick-up_d2_p1_4) (not put-down_d2_p1_4) (not pick-up_d2_p2_4) (not put-down_d2_p2_4) (not pick-up_d2_p3_4) (not put-down_d2_p3_4)))
(:implies pick-up_d1_p3_5 (and (not pick-up_d1_p1_5) (not put-down_d1_p1_5) (not pick-up_d1_p2_5) (not put-down_d1_p2_5) (not put-down_d1_p3_5) (not pick-up_d2_p1_5) (not put-down_d2_p1_5) (not pick-up_d2_p2_5) (not put-down_d2_p2_5) (not pick-up_d2_p3_5) (not put-down_d2_p3_5)))
(:implies pick-up_d1_p3_6 (and (not pick-up_d1_p1_6) (not put-down_d1_p1_6) (not pick-up_d1_p2_6) (not put-down_d1_p2_6) (not put-down_d1_p3_6) (not pick-up_d2_p1_6) (not put-down_d2_p1_6) (not pick-up_d2_p2_6) (not put-down_d2_p2_6) (not pick-up_d2_p3_6) (not put-down_d2_p3_6)))
(:implies pick-up_d2_p1_0 (and (not pick-up_d1_p1_0) (not put-down_d1_p1_0) (not pick-up_d1_p2_0) (not put-down_d1_p2_0) (not pick-up_d1_p3_0) (not put-down_d1_p3_0) (not put-down_d2_p1_0) (not pick-up_d2_p2_0) (not put-down_d2_p2_0) (not pick-up_d2_p3_0) (not put-down_d2_p3_0)))
(:implies pick-up_d2_p1_1 (and (not pick-up_d1_p1_1) (not put-down_d1_p1_1) (not pick-up_d1_p2_1) (not put-down_d1_p2_1) (not pick-up_d1_p3_1) (not put-down_d1_p3_1) (not put-down_d2_p1_1) (not pick-up_d2_p2_1) (not put-down_d2_p2_1) (not pick-up_d2_p3_1) (not put-down_d2_p3_1)))
(:implies pick-up_d2_p1_2 (and (not pick-up_d1_p1_2) (not put-down_d1_p1_2) (not pick-up_d1_p2_2) (not put-down_d1_p2_2) (not pick-up_d1_p3_2) (not put-down_d1_p3_2) (not put-down_d2_p1_2) (not pick-up_d2_p2_2) (not put-down_d2_p2_2) (not pick-up_d2_p3_2) (not put-down_d2_p3_2)))
(:implies pick-up_d2_p1_3 (and (not pick-up_d1_p1_3) (not put-down_d1_p1_3) (not pick-up_d1_p2_3) (not put-down_d1_p2_3) (not pick-up_d1_p3_3) (not put-down_d1_p3_3) (not put-down_d2_p1_3) (not pick-up_d2_p2_3) (not put-down_d2_p2_3) (not pick-up_d2_p3_3) (not put-down_d2_p3_3)))
(:implies pick-up_d2_p1_4 (and (not pick-up_d1_p1_4) (not put-down_d1_p1_4) (not pick-up_d1_p2_4) (not put-down_d1_p2_4) (not pick-up_d1_p3_4) (not put-down_d1_p3_4) (not put-down_d2_p1_4) (not pick-up_d2_p2_4) (not put-down_d2_p2_4) (not pick-up_d2_p3_4) (not put-down_d2_p3_4)))
(:implies pick-up_d2_p1_5 (and (not pick-up_d1_p1_5) (not put-down_d1_p1_5) (not pick-up_d1_p2_5) (not put-down_d1_p2_5) (not pick-up_d1_p3_5) (not put-down_d1_p3_5) (not put-down_d2_p1_5) (not pick-up_d2_p2_5) (not put-down_d2_p2_5) (not pick-up_d2_p3_5) (not put-down_d2_p3_5)))
(:implies pick-up_d2_p1_6 (and (not pick-up_d1_p1_6) (not put-down_d1_p1_6) (not pick-up_d1_p2_6) (not put-down_d1_p2_6) (not pick-up_d1_p3_6) (not put-down_d1_p3_6) (not put-down_d2_p1_6) (not pick-up_d2_p2_6) (not put-down_d2_p2_6) (not pick-up_d2_p3_6) (not put-down_d2_p3_6)))
(:implies pick-up_d2_p2_0 (and (not pick-up_d1_p1_0) (not put-down_d1_p1_0) (not pick-up_d1_p2_0) (not put-down_d1_p2_0) (not pick-up_d1_p3_0) (not put-down_d1_p3_0) (not pick-up_d2_p1_0) (not put-down_d2_p1_0) (not put-down_d2_p2_0) (not pick-up_d2_p3_0) (not put-down_d2_p3_0)))
(:implies pick-up_d2_p2_1 (and (not pick-up_d1_p1_1) (not put-down_d1_p1_1) (not pick-up_d1_p2_1) (not put-down_d1_p2_1) (not pick-up_d1_p3_1) (not put-down_d1_p3_1) (not pick-up_d2_p1_1) (not put-down_d2_p1_1) (not put-down_d2_p2_1) (not pick-up_d2_p3_1) (not put-down_d2_p3_1)))
(:implies pick-up_d2_p2_2 (and (not pick-up_d1_p1_2) (not put-down_d1_p1_2) (not pick-up_d1_p2_2) (not put-down_d1_p2_2) (not pick-up_d1_p3_2) (not put-down_d1_p3_2) (not pick-up_d2_p1_2) (not put-down_d2_p1_2) (not put-down_d2_p2_2) (not pick-up_d2_p3_2) (not put-down_d2_p3_2)))
(:implies pick-up_d2_p2_3 (and (not pick-up_d1_p1_3) (not put-down_d1_p1_3) (not pick-up_d1_p2_3) (not put-down_d1_p2_3) (not pick-up_d1_p3_3) (not put-down_d1_p3_3) (not pick-up_d2_p1_3) (not put-down_d2_p1_3) (not put-down_d2_p2_3) (not pick-up_d2_p3_3) (not put-down_d2_p3_3)))
(:implies pick-up_d2_p2_4 (and (not pick-up_d1_p1_4) (not put-down_d1_p1_4) (not pick-up_d1_p2_4) (not put-down_d1_p2_4) (not pick-up_d1_p3_4) (not put-down_d1_p3_4) (not pick-up_d2_p1_4) (not put-down_d2_p1_4) (not put-down_d2_p2_4) (not pick-up_d2_p3_4) (not put-down_d2_p3_4)))
(:implies pick-up_d2_p2_5 (and (not pick-up_d1_p1_5) (not put-down_d1_p1_5) (not pick-up_d1_p2_5) (not put-down_d1_p2_5) (not pick-up_d1_p3_5) (not put-down_d1_p3_5) (not pick-up_d2_p1_5) (not put-down_d2_p1_5) (not put-down_d2_p2_5) (not pick-up_d2_p3_5) (not put-down_d2_p3_5)))
(:implies pick-up_d2_p2_6 (and (not pick-up_d1_p1_6) (not put-down_d1_p1_6) (not pick-up_d1_p2_6) (not put-down_d1_p2_6) (not pick-up_d1_p3_6) (not put-down_d1_p3_6) (not pick-up_d2_p1_6) (not put-down_d2_p1_6) (not put-down_d2_p2_6) (not pick-up_d2_p3_6) (not put-down_d2_p3_6)))
(:implies pick-up_d2_p3_0 (and (not pick-up_d1_p1_0) (not put-down_d1_p1_0) (not pick-up_d1_p2_0) (not put-down_d1_p2_0) (not pick-up_d1_p3_0) (not put-down_d1_p3_0) (not pick-up_d2_p1_0) (not put-down_d2_p1_0) (not pick-up_d2_p2_0) (not put-down_d2_p2_0) (not put-down_d2_p3_0)))
(:implies pick-up_d2_p3_1 (and (not pick-up_d1_p1_1) (not put-down_d1_p1_1) (not pick-up_d1_p2_1) (not put-down_d1_p2_1) (not pick-up_d1_p3_1) (not put-down_d1_p3_1) (not pick-up_d2_p1_1) (not put-down_d2_p1_1) (not pick-up_d2_p2_1) (not put-down_d2_p2_1) (not put-down_d2_p3_1)))
(:implies pick-up_d2_p3_2 (and (not pick-up_d1_p1_2) (not put-down_d1_p1_2) (not pick-up_d1_p2_2) (not put-down_d1_p2_2) (not pick-up_d1_p3_2) (not put-down_d1_p3_2) (not pick-up_d2_p1_2) (not put-down_d2_p1_2) (not pick-up_d2_p2_2) (not put-down_d2_p2_2) (not put-down_d2_p3_2)))
(:implies pick-up_d2_p3_3 (and (not pick-up_d1_p1_3) (not put-down_d1_p1_3) (not pick-up_d1_p2_3) (not put-down_d1_p2_3) (not pick-up_d1_p3_3) (not put-down_d1_p3_3) (not pick-up_d2_p1_3) (not put-down_d2_p1_3) (not pick-up_d2_p2_3) (not put-down_d2_p2_3) (not put-down_d2_p3_3)))
(:implies pick-up_d2_p3_4 (and (not pick-up_d1_p1_4) (not put-down_d1_p1_4) (not pick-up_d1_p2_4) (not put-down_d1_p2_4) (not pick-up_d1_p3_4) (not put-down_d1_p3_4) (not pick-up_d2_p1_4) (not put-down_d2_p1_4) (not pick-up_d2_p2_4) (not put-down_d2_p2_4) (not put-down_d2_p3_4)))
(:implies pick-up_d2_p3_5 (and (not pick-up_d1_p1_5) (not put-down_d1_p1_5) (not pick-up_d1_p2_5) (not put-down_d1_p2_5) (not pick-up_d1_p3_5) (not put-down_d1_p3_5) (not pick-up_d2_p1_5) (not put-down_d2_p1_5) (not pick-up_d2_p2_5) (not put-down_d2_p2_5) (not put-down_d2_p3_5)))
(:implies pick-up_d2_p3_6 (and (not pick-up_d1_p1_6) (not put-down_d1_p1_6) (not pick-up_d1_p2_6) (not put-down_d1_p2_6) (not pick-up_d1_p3_6) (not put-down_d1_p3_6) (not pick-up_d2_p1_6) (not put-down_d2_p1_6) (not pick-up_d2_p2_6) (not put-down_d2_p2_6) (not put-down_d2_p3_6)))
;; action validity

)