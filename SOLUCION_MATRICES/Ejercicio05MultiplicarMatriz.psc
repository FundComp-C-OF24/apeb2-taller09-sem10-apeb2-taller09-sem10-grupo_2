Algoritmo Ejercicio05MultiplicarMatriz
    Definir t1, t2 Como Entero
    Definir mat, mat2, mat3 Como Real
    Escribir("Ingrese el tamaño de filas de la matriz")
    Leer t1
    Escribir("Ingrese el tamaño de columnas de la matriz")
    Leer t2
    Dimension mat[t1,t2]
    Dimension mat2[t1,t2]
    Dimension mat3[t1,t2]
    // Generar matrices (limite desde el 1 hasta el 20)
    Para i <- 0 Hasta t1-1 Con Paso 1 Hacer
        Para j <- 0 Hasta t2-1 Con Paso 1 Hacer
            mat[i,j] <- Aleatorio(2,21)
        FinPara
    FinPara
    Para i <- 0 Hasta t1-1 Con Paso 1 Hacer
        Para j <- 0 Hasta t2-1 Con Paso 1 Hacer
            mat2[i,j] <- Aleatorio(2,21)
        FinPara
    FinPara
    // Multiplicar matrices
    Para i <- 0 Hasta t1-1 Con Paso 1 Hacer
        Para j <- 0 Hasta t2-1 Con Paso 1 Hacer
            mat3[i,j] <- mat[i,j]*mat2[i,j]
        FinPara
    FinPara
    // Presentar datos
    Escribir("---------- MATRIZ 1----------")
    Para i <- 0 Hasta t1-1 Con Paso 1 Hacer
        Para j <- 0 Hasta t2-1 Con Paso 1 Hacer
            Escribir mat[i,j]," \t\t"
        FinPara
        Escribir("")
    FinPara
    Escribir("---------- MATRIZ 2----------")
    Para i <- 0 Hasta t1-1 Con Paso 1 Hacer
        Para j <- 0 Hasta t2-1 Con Paso 1 Hacer
            Escribir mat2[i,j]," \t\t"
        FinPara
        Escribir("")
    FinPara
    Escribir("---------- RESULTADO DE MULTIPLICACION ----------")
    Para i <- 0 Hasta t1-1 Con Paso 1 Hacer
        Para j <- 0 Hasta t2-1 Con Paso 1 Hacer
            Escribir mat3[i,j]," \t\t"
        FinPara
        Escribir("")
    FinPara
FinAlgoritmo
