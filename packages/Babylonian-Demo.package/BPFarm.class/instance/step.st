as yet unclassified
step
    
    "move those animals!"

    | r bounces |
    super step.
    bounces := 0.
    r := bounds origin corner: (bounds corner - (8@8)).
    self submorphsDo: [ :m |
        (m isMemberOf: BPAnimal) ifTrue: [
            (m moveIn: r) ifTrue: [bounces := bounces + 1]]].