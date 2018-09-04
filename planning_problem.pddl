(define (problem crumb_base_problem)
 (:domain crumb_base_domain)

 (:objects wp1 wp2 wp3 wp4 wp5 - waypoint 
           t1 - turtle
           b1 - box
 )

 (:init 
    (at t1 wp1)
    (on b1 wp3)
    ;;(at t - turtle wp1 - waypoint)
    
    (connected wp1 wp2)
    (connected wp2 wp1)
    (connected wp2 wp3)
    (connected wp3 wp2)
    (connected wp1 wp3)
    (connected wp4 wp3)
    (connected wp3 wp4)
    (connected wp4 wp5)
    (connected wp5 wp4)
    
 )

 (:goal (and 
    (on b1 wp5)
    (at t1 wp4))
 )
)    
