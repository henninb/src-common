(* single byte integer *)
let x = 268.97f
let y = 312.58f
let z = x + y

printfn "x: %f" x
printfn "y: %f" y
printfn "z: %f" z

(* unsigned 8-bit natural number *)

let p = 2uy
let q = 4uy
let r = p + q

printfn "unsigned 8-bit natural number"
printfn "p: %i" p
printfn "q: %i" q
printfn "r: %i" r

(* signed 16-bit integer *)

let a = 12s
let b = 24s
let c = a + b

printfn "signed 16-bit integer"
printfn "a: %i" a
printfn "b: %i" b
printfn "c: %i" c

(* signed 32-bit integer *)

let d = 212l
let e = 504l
let f = d + e

printfn "signed 32-bit integer"
printfn "d: %i" d
printfn "e: %i" e
printfn "f: %i" f


(* 32-bit signed floating point number *)
(* 7 significant digits *)

let d1 = 212.098f
let e1 = 504.768f
let f1 = d1 + e1

printfn "d1: %f" d1
printfn "e1: %f" e1
printfn "f1: %f" f1

(* 64-bit signed floating point number *)
(* 15-16 significant digits *)
let x1 = 21290.098
let y1 = 50446.768
let z1 = x1 + y1

printfn "x1: %g" x1
printfn "y1: %g" y1
printfn "z1: %g" z1
