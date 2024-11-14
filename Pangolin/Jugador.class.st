Class {
	#name : 'Jugador',
	#superclass : 'Object',
	#instVars : [
		'posicion'
	],
	#category : 'Pangolin',
	#package : 'Pangolin'
}

{ #category : 'as yet unclassified' }
Jugador >> moverEnDireccion: direccion enTablero: tablero [
    | nuevaPosicion |
    nuevaPosicion := posicion + direccion.
    (tablero obtenerCasillaEn: nuevaPosicion x y: nuevaPosicion y) ifNotNil: [
        (tablero obtenerCasillaEn: posicion x y: posicion y) vaciar.
        tablero colocarJugador: self en: nuevaPosicion.
    ].

]

{ #category : 'accessing' }
Jugador >> posicion: unaPosicion [
    posicion := unaPosicion.

]
