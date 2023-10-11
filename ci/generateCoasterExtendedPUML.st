documentor := FamixUMLDocumentor new.
documentor
    model: CCModel color: Color lightBlue;
    model: CCEModel color: Color lightGreen;
    beWithStubs;
    generate.

'coasterExtended.puml' asFileReference writeStreamDo: [ :stream |
    FamixUMLPlantUMLBackend new
        outputStream:  stream;
        export: documentor umlEntities.
].

Smalltalk snapshot: false andQuit: true

