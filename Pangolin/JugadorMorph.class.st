Class {
	#name : #JugadorMorph,
	#superclass : #EllipseMorph,
	#instVars : [
		'posicion'
	],
	#category : #Pangolin
}

{ #category : #initialization }
JugadorMorph >> initialize [
    super initialize.
    self extent: 30@30. "Define el tamaño del jugador"
    self color: Color red.
]

{ #category : #accessing }
JugadorMorph >> posicion: unaPosicion [
    posicion := unaPosicion.
]
