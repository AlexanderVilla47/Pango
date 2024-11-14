Class {
	#name : 'Tablero',
	#superclass : 'Object',
	#instVars : [
		'casillas'
	],
	#category : 'Pangolin',
	#package : 'Pangolin'
}

{ #category : 'as yet unclassified' }
Tablero >> colocarJugador: jugador en: posicion [
    | casilla jugadorMorph |
    casilla := self obtenerCasillaEn: posicion x y: posicion y.
    jugadorMorph := EllipseMorph new.
    jugadorMorph color: Color blue.
    jugadorMorph extent: 40@40.
    jugadorMorph position: (casilla casillaMorph position + (5@5)). "Ajuste de posición dentro de la casilla"
    casilla casillaMorph addMorph: jugadorMorph.
    jugador posicion: posicion.
]

{ #category : 'initialization' }
Tablero >> initialize [
    casillas := OrderedCollection new: 16.
    1 to: 16 do: [ :index |
        casillas add: (Casilla new).
    ].

]

{ #category : 'as yet unclassified' }
Tablero >> obtenerCasillaEn: x y: y [
    ^ casillas at: ((x - 1) * 4 + y).

]

{ #category : 'opening' }
Tablero >> openInWorld [
    | tableroMorph |
    tableroMorph := Morph new.
    tableroMorph extent: 200@200.
    1 to: 4 do: [ :row |
        1 to: 4 do: [ :col |
            | casilla |
            casilla := self obtenerCasillaEn: row y: col.
            casilla initializeMorph.
            casilla casillaMorph position: ((col - 1) * 50) @ ((row - 1) * 50).
            tableroMorph addMorph: casilla casillaMorph.
        ].
    ].
    tableroMorph openInWorld.


]
