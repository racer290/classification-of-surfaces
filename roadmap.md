# Roadmap to the classification of surfaces
✅ ❌
### Stating the theorem

- define topological manifolds (with boundary)
    - define "taking the boundary" as operation
    - prove relevant properties of the boundary
- define gluing of two manifolds along some boundary (maybe not even the whole boundary)
    - for spherical boundary, show that orientation and starting point don't matter
- define the connected sum of two manifolds
    - define the excision of a disc from a manifold
    - show that it is independent of the choice of where to excise if both manifolds are connected
- define surfaces
- prove how the definitions play out on surfaces without boundary and with boundary
- define required "primitive" surfaces: D^2, T^2, RP^2, S^2, ... ?
- state classification theorem

### Pick a proof and prove it

- handle decompositions:
    - define handles
    - define how they attach to surfaces
    - define handle decompositions
    - show that every surface has a handle decomposition
        - maybe add additional hypotheses to make this easier?
          either directly suppose that we start with a handle decomposition or begin with a triangulation and construct handle decomposition using it
    - show that handle decompositions can be transformed into the "standard representation" using only a single 0-handle and a single 2-handle
        - how does this work if we don't rely on a triangulation?
        - if we do, how to pull the 0-handle out properly?
        - collapse "flat" combinations of 1- and 2-handles into the rest of the surface
    - show that conneacted sum acts on standard representations by adding their 1-handles together to a single anchor
    - prove relevant properties of the handle slide
        - twisting of handles
    - some combinatorics to unlink all handles and get our surface into "normal sum representation"
        - infinitely many nontrivial handles?/linked handles?
            - can't happen due to compactness, but must be proven
            - explicitly construct a cover from slightly enlarged handles and choose finite subcover - only works if finitely many 1-handles
            - alternatively, prove from triangulation under the assumption that the latter is finite or bake into hypotheses
        - use the real line or stay with S1?
            - how does T2 + RP2 -> RP2 + RP2 + RP2 work if in R?
    - show that every normal sum representation of a surface is in one of our three classes
        - construct

- Conway's zipper proof?
    - works with similar notions, but without the representations

- other possibilities?