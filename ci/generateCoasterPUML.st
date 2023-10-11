documentor := FamixUMLDocumentor new.
documentor
    model: CCModel;
    beWithStubs;
    generate.

'coaster.puml' asFileReference writeStreamDo: [ :stream |
    FamixUMLPlantUMLBackend new
        outputStream:  stream;
        export: documentor umlEntities.
].

Smalltalk snapshot: false andQuit: true

