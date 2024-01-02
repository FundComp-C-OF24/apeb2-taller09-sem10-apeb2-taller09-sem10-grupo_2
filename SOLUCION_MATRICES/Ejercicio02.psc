Algoritmo Ejercicio02
    Definir capacidadTienda , productosTotales Como Entero
    Definir mostrarMenu Como Logico
	Definir tienda como Cadena
    capacidadTienda <- 10
    Dimension tienda[capacidadTienda,3]
    mostrarMenu <- Verdadero
    productosTotales <- 1
	
    //Agregar un producto por defecto:
    tienda[0,0] <- "Leche" //Nombre
    tienda[0,1] <- "$1.25" //Precio
    tienda[0,2] <- "Disponibles: 3" //Cantidad:
	
    Mientras mostrarMenu Hacer
        Escribir("Producto \tPrecio \t\t Cantidad:")
        Para i <- 0 Hasta capacidadTienda-1 Con Paso 1 Hacer
            Para j <- 0 Hasta 2 Con Paso 1 Hacer
                Si tienda[i,j] <> "" Entonces
                    Escribir tienda[i,j], "\t\t" 
                Sino
                    Escribir "X \t\t" 
                FinSi
            FinPara
            Escribir("")
        FinPara
        Escribir("Qué desea hacer?: Escribir el número para seleccionar")
        Escribir("1.- Agregar nuevo producto: ")
        Escribir("2.- Actualizar producto existente: ")
        Escribir("3.- Buscar un producto: ")
        Escribir("4.- Eliminar un producto: ")
        Escribir("Otro.- Salir del programa: ")
        Leer opcionSeleccionada
        Segun opcionSeleccionada Hacer
            1: Si productosTotales < capacidadTienda Entonces
                    Escribir("Ingrese el nombre del producto: ")
                    Leer tienda[productosTotales,0] 
                    Escribir("Ingrese el precio del producto: ")
                    Leer tienda[productosTotales,1]
                    Escribir("Ingrese la cantidad disponible del producto: ")
                    Leer tienda[productosTotales,2]
                    productosTotales <- productosTotales + 1
                Sino
                    Escribir("La tienda está llena. No se puede agregar más")
                FinSi
            2:
            3:
            4:
            De Otro Modo: mostrarMenu <- Falso
        FinSegun
    FinMientras
FinAlgoritmo
