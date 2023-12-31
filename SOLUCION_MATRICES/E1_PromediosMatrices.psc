Algoritmo PromediosMatrices
	Definir limest, limNotas, i, j Como Entero
	limEst= 3
	limNotas=3
	Definir arrNomEst Como Cadena
	Definir arrNotasEst, arrPromEst Como Real
	//Definir arrays en PseInt (Dimension)
	Dimension arrNomEst[limEst]
	Dimension arrNotasEst[limEst,limNotas]
	Dimension arrPromEst[limEst]
	// Autogenerar notas
	Para i=0 Hasta limEst-1 Con Paso 1 Hacer
		
		Para j=0 Hasta limNotas-1 Con Paso 1 Hacer
			arrNotasEst[i,j] = Aleatorio(0.0,10)	
		FinPara
	FinPara
	// Ingresar Nombres
	Para i=0 Hasta limEst-1 Con Paso 1 Hacer
		Escribir "Ingrese nombre del estudiante:"
		Leer arrNomEst[i]
	FinPara
	// Calcular Promedio
	Para i=0 Hasta limEst-1 Con Paso 1 Hacer
		arrPromEst[i]=(arrNotasEst[i,0]*0.35)+(arrNotasEst[i,1]*0.35)+(arrNotasEst[i,2]*0.30)
	FinPara
	// Presentar Datos
	Escribir "Nombres | ACD | APE | AA | Promedios"
	Para i=0 Hasta limEst-1 Con Paso 1 Hacer
		Escribir arrNomEst[i], " | " Sin Saltar
		Para j=0 Hasta limNotas-1 Con Paso 1 Hacer
			Escribir arrNotasEst[i,j]," | " Sin Saltar
		FinPara
		Escribir " | ", arrPromEst[i]
	FinPara
	
FinAlgoritmo
