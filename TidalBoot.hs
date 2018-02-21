:set -XOverloadedStrings
:set prompt ""
:module Sound.Tidal.Context

:load C:\Users\mike.hodnick\code\algosix\TidalProc.hs

(cps, nudger, getNow) <- cpsUtils'

import Sound.Tidal.Context

import TidalProc

(d1,t1) <- superDirtSetters getNow
(d2,t2) <- superDirtSetters getNow
(d3,t3) <- superDirtSetters getNow
(d4,t4) <- superDirtSetters getNow
(d5,t5) <- superDirtSetters getNow
(d6,t6) <- superDirtSetters getNow
(d7,t7) <- superDirtSetters getNow
(d8,t8) <- superDirtSetters getNow
(d9,t9) <- superDirtSetters getNow
(harmor1,tharmor1) <- superDirtSetters getNow
(harmor2,tharmor2) <- superDirtSetters getNow

vis <- procStream

let bps x = cps (x/2)
let bpm x = bps (x/120)
let hush = mapM_ ($ silence) [d1,d2,d3,d4,d5,d6,d7,d8,d9,vis,harmor1,harmor2]
let solo = (>>) hush

:set prompt "tidal> "
