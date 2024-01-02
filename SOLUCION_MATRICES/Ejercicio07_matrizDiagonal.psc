Algoritmo Ejercicio07_matrizDiagonal
	Escribir "Ingresa el tamano de la matriz: "
	leer matrizSize
	Dimension matriz[matrizSize, matrizSize]
	Para i<-1 Hasta matrizSize Con Paso 1 Hacer
		Para j<-1 Hasta matrizSize Con Paso 1 Hacer
			matriz[i, j] = Aleatorio(-9, 9)
			Escribir "(", matriz[i, j], "] " Sin Saltar
		Fin Para
		Escribir ""
	Fin Para
	//Diagonal secundaria:
	Escribir "Diagonal secundaria: "
	Para i<-1 Hasta matrizSize Con Paso 1 Hacer
		Escribir "([", matriz[i, matrizSize-i+1], "] " Sin Saltar
	Fin Para
	Escribir ""
	Escribir "Sobre la diagonal secundaria: "
	Para i<-1 Hasta matrizSize Con Paso 1 Hacer
		Para j<-1 Hasta matrizSize-i Con Paso 1 Hacer
			Escribir "(", matriz[i, j], "] " Sin Saltar
		Fin Para
		Escribir ""
	FinPara
	Escribir "Bajo la diagonal secundaria: "
	Para i<-2 Hasta matrizSize Con Paso 1 Hacer
		Para j<-matrizSize-i+2 Hasta matrizSize Con Paso 1 Hacer
			Escribir "([", matriz[i, j], "] " Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo