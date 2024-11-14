Class {
	#name : #CasillaMorph,
	#superclass : #Morph,
	#instVars : [
		'posicion',
		'jugador'
	],
	#category : #Pangolin
}

{ #category : #'as yet unclassified' }
CasillaMorph >> colocarJugador: unJugador [
    jugador ifNotNil: [self removeMorph: jugador]. "Remueve al jugador de la casilla actual"
    jugador := unJugador.
    self addMorph: jugador. "Añade al jugador en la nueva casilla"
    jugador position: self center - (jugador extent / 2). "Posiciona al jugador en el centro de la casilla"
    jugador changed. "Fuerza el refresco visual del jugador"
]

{ #category : #initialization }
CasillaMorph >> initialize [
    super initialize.
    self extent: 50@50. "Define el tamaño de la casilla"
    self color: Color white.

]

{ #category : #initialization }
CasillaMorph >> posicion: unaPosicion [
    posicion := unaPosicion.

]
