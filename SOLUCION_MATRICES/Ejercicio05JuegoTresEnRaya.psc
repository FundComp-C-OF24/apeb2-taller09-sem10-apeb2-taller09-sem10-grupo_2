Algoritmo Ejercicio05JuegoTresEnRaya
	Definir mt Como Caracter
	Definir lon Como Entero
	lon=3
    Dimension mt[lon,lon]
	Definir jugadorActual como Caracter 
	jugadorActual= 'X'
    Definir hayGanador como Logico 
	hayGanador= Falso
    Definir movimientos como Entero 
	movimientos= 0
    
    // Inicializar la matriz
    Para i <- 0 Hasta lon-1 Con Paso 1 Hacer
        Para j <- 0 Hasta lon-1 Con Paso 1 Hacer
            mt[i,j] = '-'
        FinPara
    FinPara
    
    // Jugar hasta que haya un ganador o empate
    Mientras No hayGanador Y movimientos < 9 Hacer
        // Mostrar la matriz
        Escribir("Tablero actual:")
        Para i <- 0 Hasta lon-1 Con Paso 1 Hacer
            Para j <- 0 Hasta lon-1 Con Paso 1 Hacer
                Escribir mt[i,j] , " "
            FinPara
            Escribir("")
        FinPara
		
        // Pedir al jugador que haga su movimiento
        Escribir("Jugador " + jugadorActual + ", es tu turno.")
        Escribir("Fila (1-3): ")
        leer fila
		fila = fila-1
        Escribir("Columna (1-3): ")
        leer columna
		columna= columna-1
		
        // Verificar si la posición está disponible
        Si mt[fila,columna] = '-' Entonces
            mt[fila,columna] <- jugadorActual
            movimientos <- movimientos + 1
			
            // Verificar si el jugador actual ha ganado
            Si (mt[fila,0] = jugadorActual Y mt[fila,1] = jugadorActual Y mt[fila,2] = jugadorActual O mt[0,columna] = jugadorActual Y mt[1,columna] = jugadorActual Y mt[2,columna] = jugadorActual O fila = columna Y mt[0,0] = jugadorActual Y mt[1,1] = jugadorActual Y mt[2,2] = jugadorActual O fila + columna = 2 Y mt[0,2] = jugadorActual Y mt[1,1] = jugadorActual Y mt[2,0] = jugadorActual) Entonces
                hayGanador <- Verdadero
                Escribir("¡Jugador " + jugadorActual + " ha ganado!")
            SiNo
				// Cambiar al siguiente jugador
				Si jugadorActual = 'X' Entonces
					jugadorActual = 'O'
				SiNo
					jugadorActual= 'X'
				FinSi
            FinSi
        Sino
            Escribir("La posición seleccionada no está disponible. Por favor, intenta de nuevo.")
	
    // Mostrar el resultado final
    Si No hayGanador Entonces
        Escribir("¡Empate!")
    FinSi
	
    Escribir("Matriz final:")
    Para i <- 0 Hasta lon-1 Con Paso 1 Hacer
        Para j <- 0 Hasta lon-1 Con Paso 1 Hacer
            Escribir(mt[i,j] + " ")
        FinPara
        Escribir("")
    FinPara
        FinSi
    FinMientras
	Escribir("Gracias por jugar ??")
FinAlgoritmo
