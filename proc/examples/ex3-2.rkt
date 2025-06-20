#lang dcc019/proc

let makerec = proc (f)
  let d = proc (x)
    proc (z) ((f (x x)) z)
      in proc (n) ((f (d d)) n)
in let makesum = proc (f)
  proc (n)
    if zero?(n) 
      then 0 
      else if zero?(-(n, 1))
        then n
        else -((f -(n, 1)), -(0, n))
in let sum = (makerec makesum)
  in (sum 100)

