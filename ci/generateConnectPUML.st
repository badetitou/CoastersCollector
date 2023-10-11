documentor := FamixUMLDocumentor new.
documentor
    model: CMModel color: Color white;
    model: CCModel color: Color lightBlue;
    model: WModel color: Color lightGreen;
    excludeClasses: { CCModel. CMModel. WModel. CCEntity };
    generate.

'connect.puml' asFileReference writeStreamDo: [ :stream |
    FamixUMLPlantUMLBackend new
        outputStream:  stream;
        export: documentor umlEntities.
].

Smalltalk snapshot: false andQuit: true

