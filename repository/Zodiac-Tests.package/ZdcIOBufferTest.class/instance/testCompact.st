tests - compact
testCompact
	| ioBuffer |
	ioBuffer := ZdcIOBuffer on: (ByteArray new: 10).
	1 to: 6 do: [ :each | ioBuffer nextPut: each ].
	3 timesRepeat: [ ioBuffer next ].
	ioBuffer compact.
	self assert: ioBuffer availableForReading equals: 3.
	self assert: ioBuffer availableForWriting equals: 7.
	3 timesRepeat: [ ioBuffer next ].
	self assert: ioBuffer gapAtFront equals: 3.
	ioBuffer compact.
	self assert: ioBuffer isEmpty
	
		