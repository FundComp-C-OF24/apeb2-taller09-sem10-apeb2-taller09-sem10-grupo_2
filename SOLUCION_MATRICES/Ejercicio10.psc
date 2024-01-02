Algoritmo Ejercicio10PiramideSimetrica
	Escribir "Ingrese la altura de la piramide"
	Definir altura, i, j, k Como Entero
	Leer altura
	Para  i = 1 Hasta  altura Con Paso 1
		Para  j = 1 Hasta  altura - i Con Paso 1
			Escribir " "
		FinPara
		Para k = 1 Hasta  i Con Paso 1
			Escribir "* "
		FinPara
		Escribir " "
	FinPara
	
	Para  i = altura - 1 Hasta 1 Con Paso -1 
		Para  j = 1 Hasta  altura - i Con Paso 1 
			Escribir " "
		FinPara
		Para  k = 1 Hasta i Con Paso 1 
			Escribir "* "
		FinPara
		Escribir " "
	FinPara
FinAlgoritmo
