Class {
	#name : #JuegoPangolin,
	#superclass : #Object,
	#instVars : [
		'tablero',
		'jugadores'
	],
	#category : #Pangolin
}

{ #category : #'as yet unclassified' }
JuegoPangolin >> iniciarJuego [
    tablero openInWorld.
    tablero colocarJugador: (jugadores first) en: 1@1.

]

{ #category : #initialization }
JuegoPangolin >> initialize [
	 TableroMorph allInstances do: [:each | each delete].
    tablero := TableroMorph new juego: self.  "Pasamos 'self' como referencia"
    jugadores := OrderedCollection new.
    jugadores add: (JugadorMorph new posicion: 1@1).
    self iniciarJuego.
]

{ #category : #accessing }
JuegoPangolin >> jugadores [
    ^ jugadores
]

{ #category : #'as yet unclassified' }
JuegoPangolin >> moverJugador: unJugador a: nuevaPosicion [
    tablero moverJugador: unJugador a: nuevaPosicion.
]
