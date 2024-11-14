Class {
	#name : 'Casilla',
	#superclass : 'Object',
	#instVars : [
		'jugadorPresente',
		'casillaMorph'
	],
	#category : 'Pangolin',
	#package : 'Pangolin'
}

{ #category : 'accessing' }
Casilla >> casillaMorph [
    ^ casillaMorph

]

{ #category : 'as yet unclassified' }
Casilla >> contenerJugador [
    jugadorPresente := true.

]

{ #category : 'initialization' }
Casilla >> initializeMorph [
    casillaMorph := Morph new.
    casillaMorph color: Color lightGray.
    casillaMorph extent: 50@50.
]

{ #category : 'as yet unclassified' }
Casilla >> vaciar [
    jugadorPresente := false.

]
