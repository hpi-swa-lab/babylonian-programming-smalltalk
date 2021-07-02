as yet unclassified
randomPositionIn: aRectangle maxVelocity: maxVelocity
    
    "Give this animal a random position and velocity."

    | origin extent |
    origin := aRectangle origin.
    extent := (aRectangle extent - self bounds extent) - 6  rounded.
    self position:
        (origin x + extent x atRandom + 3) @
        (origin y + extent y atRandom + 3).
    velocity :=
        (maxVelocity - (2 * maxVelocity) atRandom) @
        (maxVelocity - (2 * maxVelocity) atRandom).