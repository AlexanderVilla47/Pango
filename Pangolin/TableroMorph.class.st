Class {
	#name : #TableroMorph,
	#superclass : #Morph,
	#instVars : [
		'casillas',
		'juego'
	],
	#category : #Pangolin
}

{ #category : #'as yet unclassified' }
TableroMorph >> colocarJugador: unJugador en: posicion [
    | casilla |
    casilla := casillas at: posicion ifAbsent: [^self].
    casilla colocarJugador: unJugador.
]

{ #category : #initialization }
TableroMorph >> crearCasillas [
    "Crea una cuadrícula de 2x2 casillas"
    1 to: 2 do: [:x |
        1 to: 2 do: [:y |
            | casillaPos casillaMorph |
            casillaPos := x @ y.
            casillaMorph := CasillaMorph new.
            casillaMorph posicion: casillaPos.
            casillaMorph extent: 50@50. "Cada casilla es de 50x50"
            casillaMorph borderWidth: 1; borderColor: Color black. "Bordes para visualizar la cuadrícula"
            casillas at: casillaPos put: casillaMorph.
             casillaMorph on: #mouseDown send: #value to: [self manejarClickEn: casillaPos]. "Configura el clic directamente"
            self addMorph: casillaMorph.
            casillaMorph position: ((x - 1) * 50) @ ((y - 1) * 50). "Posiciona las casillas en un tablero 2x2"
        ]].
]

{ #category : #initialization }
TableroMorph >> initialize [
    super initialize.
    self extent: 100@100. "Tamaño total del tablero"
    casillas := Dictionary new.
    self crearCasillas.
]

{ #category : #accessing }
TableroMorph >> juego: unJuego [
    juego := unJuego.  "Guarda la referencia de la instancia de JuegoPangolin"

]

{ #category : #accessing }
TableroMorph >> manejarClickEn: posicion [
    Transcript show: 'Casilla clickeada en posicion: ', posicion printString; cr.
    juego moverJugador: (juego jugadores first) a: posicion.
]

{ #category : #'as yet unclassified' }
TableroMorph >> moverJugador: unJugador a: nuevaPosicion [
    | casilla |
    casilla := casillas at: nuevaPosicion ifAbsent: [^self].
    casilla colocarJugador: unJugador.
]
