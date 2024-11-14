Class {
	#name : 'JuegoPangolin',
	#superclass : 'Object',
	#instVars : [
		'tablero',
		'jugadores'
	],
	#category : 'Pangolin',
	#package : 'Pangolin'
}

{ #category : 'as yet unclassified' }
JuegoPangolin >> iniciarJuego [
    tablero openInWorld.
    tablero colocarJugador: (jugadores first) en: 1@1.

]

{ #category : 'initialization' }
JuegoPangolin >> initialize [
    tablero := Tablero new.
    jugadores := OrderedCollection new.
    jugadores add: (Jugador new posicion: 1@1).
    self iniciarJuego.

]
