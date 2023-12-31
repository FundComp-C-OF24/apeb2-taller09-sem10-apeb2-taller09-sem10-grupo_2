Algoritmo Ejercicio06SumaRestaMatrices
	Definir limitMt como Entero 
	limitMt= 3
	Definir mt1,mt2, matrizResultado como Entero
	Dimension mt1[limitMt,limitMt]
	Dimension mt2[limitMt,limitMt]
	Dimension matrizResultado[limitMt,limitMt]
		
		// Generar la matriz 1:
		Escribir("------ MATRIZ 1: ---------- ")
		Para i <- 0 Hasta limitMt-1 Con Paso 1 Hacer
			Para j <- 0 Hasta limitMt-1 Con Paso 1 Hacer
				mt1[i,j] <- Aleatorio(-9, 10)
				Escribir mt1[i,j] , "\t"
			FinPara
			Escribir("")
		FinPara
		
		Escribir("------ MATRIZ 2: ---------- ")
		Para i <- 0 Hasta limitMt-1 Con Paso 1 Hacer
			Para j <- 0 Hasta limitMt-1 Con Paso 1 Hacer
				mt2[i,j] <- Aleatorio(-9, 10)
				Escribir mt2[i,j] ,"\t"
			FinPara
			Escribir("")
		FinPara
		
		Escribir("--------------")
		Escribir("Escribe la opcion para seleccionar")
		Escribir("1.- Sumar matrices")
		Escribir("2.- Restar matrices")
		Leer opcion

		Si opcion = 1 Entonces
			Escribir("---SUMA DE MATRICES---")
			Para i <- 0 Hasta limitMt-1 Con Paso 1 Hacer
				Para j <- 0 Hasta limitMt-1 Con Paso 1 Hacer
					matrizResultado[i,j] <- mt1[i,j] + mt2[i,j]
					Escribir matrizResultado[i,j] , "\t"
				FinPara
				Escribir("")
			FinPara
			Sino Si opcion = 2 Entonces
			Escribir("---RESTA DE MATRICES---")
			Para i <- 0 Hasta limitMt-1 Con Paso 1 Hacer
				Para j <- 0 Hasta limitMt-1 Con Paso 1 Hacer
					matrizResultado[i,j] <- mt1[i,j] - mt2[i,j]
					Escribir matrizResultado[i,j] , "\t"
				FinPara
				Escribir("")
			FinPara
		Sino
			Escribir("Opción no existe :D")
		FinSi
		FinSi
FinAlgoritmo
