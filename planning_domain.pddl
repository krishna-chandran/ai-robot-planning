(define (domain crumb_base_domain)

 (:requirements :strips :typing)
 (:types
	waypoint 
	turtle
	box
 )
 (:predicates
     ;;(at ?t - turtle ?wp - waypoint)
     (at ?t ?wp)
     (connected ?from ?to)
     (waypoint ?wp)
     (turtle ?t)
     (box ?b)
     (has ?t ?b)
     (on ?b ?wp))

 (:action move-to-desired-point 
   :parameters (?t ?from ?to)
   :precondition (and (at ?t ?from)
                      (connected ?from ?to)
                      (connected ?to ?from)
                      )
   :effect (and (not (at ?t ?from))
                (at ?t ?to))
 )
  (:action pick-box 
   :parameters (?t ?b ?from)
   :precondition (and (at ?t ?from)
                      (on ?b ?from)
                      (not (has ?t ?b)))
                      
   :effect (and (not (on ?b ?from))
                (has ?t ?b))
 )
 
 (:action drop-box 
   :parameters (?t ?b ?to)
   :precondition (and (at ?t ?to)
                      (has ?t ?b) )
                      
   :effect (and (on ?b ?to)
               (not (has ?t ?b)))
 )
                       
)

