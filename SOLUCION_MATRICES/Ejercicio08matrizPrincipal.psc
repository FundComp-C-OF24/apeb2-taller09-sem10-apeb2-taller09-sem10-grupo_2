Algoritmo Ejercicio08matrizPrincipal
	Escribir "Ingresa el tamaño de la matriz:"
	Leer matrizSize
	
	Dimensionar matriz(matrizSize,matrizSize)
	
	Para i=1 Hasta matrizSize Con Paso 1 Hacer
		
		Para j=1 Hasta matrizSize Con Paso 1 Hacer
			matriz[i,j]=Aleatorio(-9,9)
			Escribir '[', matriz[i,j], '] 'Sin Saltar
		FinPara
		
		Escribir ''
		
	FinPara
	
	// Diagonal principal:
	Escribir 'Diagonal principal: '
	
	Para i=1 Hasta matrizSize Con Paso 1 Hacer
		
		Escribir '[', matriz[i,i], '] 'Sin Saltar
	FinPara
	
	Escribir ''
	
	Escribir 'Sobre la diagonal principal:'
	
	Para i=1 Hasta matrizSize Con Paso 1 Hacer
		
		Para j=i+1 Hasta matrizSize Con Paso 1 Hacer
			Escribir '[', matriz[i,i], '] 'Sin Saltar
		FinPara
		
		Escribir ''
		
	FinPara
	
	Escribir 'Bajo la diagonal principal:'
	
	Para i=2 Hasta matrizSize Con Paso 1 Hacer
			Para j=1 Hasta i-1 Con Paso 1 Hacer
				Escribir '[', matriz[i,j], ']		'Sin Saltar
			FinPara
			Escribir ''
		FinPara
FinAlgoritmo


