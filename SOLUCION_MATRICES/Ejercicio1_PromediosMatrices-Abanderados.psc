Algoritmo Ejercicio01Promedios
    Definir nameAba como Cadena
	Definir limEst, limNotas como Entero
	limEst<-6
    limNotas <- 3
	
    Dimension nameAba[limEst,limNotas]
	Definir matrizNotas como Real
	Dimension matrizNotas[limEst,limNotas]
    Definir arrPromedios, estGood, estBad como Real
	Dimension arrPromedios[limEst], estGood[limEst], estBad[limEst]
    Definir sumaTotal, promedioTotal, notaMax, notaMin como Real
    
	nameAba[0,0]="Nombre1"
	nameAba[1,0]="Nombre2"
	nameAba[2,0]="Nombre3"
	nameAba[3,0]="Nombre4"
	nameAba[4,0]="Marco"
	nameAba[5,0]="Adrian"
    
    
    Para i <- 0 Hasta limEst-1 Con Paso 1 
        Para j <- 0 Hasta limNotas-1 Con Paso 1 
            matrizNotas[i,j] = Aleatorio(9, 10)
        FinPara
    FinPara
    
    Para i <- 0 Hasta limEst-1 Con Paso 1 Hacer
        arrPromedios[i] <- (matrizNotas[i,0] * 0.35) + (matrizNotas[i,1] * 0.35) + (matrizNotas[i,2] * 0.3)
    FinPara
    
    notaMax <- arrPromedios[1]
    notaMin <- arrPromedios[1]
    
    Para i <- 0 Hasta limEst-1 Con Paso 1 Hacer
        Si arrPromedios[i] > notaMax Entonces
            notaMax <- arrPromedios[i]
			Sino Si arrPromedios[i] < notaMin Entonces
            notaMin <- arrPromedios[i]
        FinSi
		FinSi
    FinPara
    
    Para i <- 0 Hasta limEst-1 Con Paso 1 Hacer
        sumaTotal <- sumaTotal + arrPromedios[i]
    FinPara
    
    promedioTotal <- sumaTotal / limEst
    
    Para i <- 0 Hasta limEst-1 Con Paso 1 Hacer
        Si arrPromedios[i] > promedioTotal Entonces
            estGood[i] <- arrPromedios[i]
        FinSi
        Si arrPromedios[i] < promedioTotal Entonces
            estBad[i] <- arrPromedios[i]
        FinSi
    FinPara
	Escribir("Nombres | ACD\t| APE\t| AA\t| Promedios")
	Para i <- 0 Hasta limEst-1 Con Paso 1 Hacer
		Para j <- 0 Hasta limNotas-1 Con Paso 1 Hacer
			Escribir nameAba[i,j] , "\t"
			Escribir"| " , matrizNotas[i,j] , "\t"
		FinPara
		Escribir"|" , arrPromedios[i] , "\t"
		Escribir""
	FinPara
	
	Escribir"El promedio es " , promedioTotal
	Escribir"La nota maxima es: " , notaMax
	Escribir"La nota minima es: " , notaMin
	Escribir("-------")
	Escribir"Estudiante encima del promedio: "
	Escribir("")
	Para i <- 0 Hasta limEst-1 Con Paso 1 Hacer
		Si estGood[i] > promedioTotal Entonces
			Para j <- 0 Hasta limNotas-1 Con Paso 1 Hacer
				Escribir nameAba[i,j] , " tiene " , estGood[i] , "\t"
			FinPara
			
		FinSi
	FinPara
	Escribir("-------")
	Escribir("Estudiante debajo del promedio: ")
	Escribir("")
	Para i <- 0 Hasta limEst-1 Con Paso 1 Hacer
		Si estBad[i] < promedioTotal Y estBad[i] <> 0.0 Entonces
			Para j <- 0 Hasta limNotas-1 Con Paso 1 Hacer
				Escribir nameAba[i,j] , " tiene " , estBad[i] , "\t"
			FinPara
		FinSi
	FinPara
	Escribir("")
	Escribir("-------")

	
FinAlgoritmo
