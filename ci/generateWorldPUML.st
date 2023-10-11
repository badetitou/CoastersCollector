documentor := FamixUMLDocumentor new.
documentor
    model: WModel;
    beWithStubs;
    generate.

'world.puml' asFileReference writeStreamDo: [ :stream |
    FamixUMLPlantUMLBackend new
        outputStream:  stream;
        export: documentor umlEntities.
].

Smalltalk snapshot: false andQuit: true

