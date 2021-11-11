# Roadmap to the classification of surfaces
✅ ❌
### Stating the theorem

- ❌ define topological manifolds (with boundary)
- ❌ define surfaces
    - ❌ define "taking the boundary" as operation (maybe even prove some functorial properties?)
- ❌ define the connected sum of two manifolds
    - ❌ show that it is independent of the choice of where to attach if both surfaces are connected
- ❌ prove how it plays out on surfaces without boundary and with boundary
- ❌ define required "primitive" surfaces: D^2, T^2, RP^2, S^2, ... ?
- ❌ state classification theorem

### Pick a proof and prove it

- handle decompositions:
    - define handles
    - define how they attach to surfaces
    - define handle decompositions
    - show that every surface has a handle decomposition
        - maybe add additional hypotheses to make this easier?
    - show that handle decompositions can be transformed into the "standard representation" using only a single 0-handle and a single 2-handle
        - how does this work if we don't rely on a triangulation?
        - if we do, how to pull the 0-handle out properly?
        - collapse "flat" combinations of 1- and 2-handles into the rest of the surface
    - show that conneacted sum acts on standard representations by adding their 1-handles together to a single anchor
    - prove relevant properties of the handle slide
        - which?
    - some combinatorics to unlink all handles and get our surface into "normal sum representation"
        - infinitely many nontrivial handles?/linked handles?
        - use the real line or stay with S1?
            - how does T2 + RP2 -> RP2 + RP2 + RP2 work if in R?
    - show that every normal sum representation of a surface is in one of our three classes