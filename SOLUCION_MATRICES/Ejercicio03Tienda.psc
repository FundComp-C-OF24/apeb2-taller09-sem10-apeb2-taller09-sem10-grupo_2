Proceso Ejercicio03Tienda
	Definir capacidadTienda como Entero 
	capacidadTienda = 10 
	Definir tienda como Cadena
    Dimension tiendaProducto[capacidadTienda]
    Dimension tiendaPrecio[capacidadTienda,3]
    Definir mostrarMenu como Logico 
    mostrarMenu = Verdadero
	Definir productosTotales como Entero 
	productosTotales=1
    Definir precioTotal, desc como Real
    
    // Agregar un producto por defecto:
    tiendaProducto[0] <- "Leche" // Nombre
    tiendaPrecio[0,1] <- 1.25 // Precio
    tiendaPrecio[0,2] <- 3 // Cantidad
    
    Escribir"Producto \tPrecio \t\t Cantidad:"
    Para i <- 0 Hasta capacidadTienda-1 Con Paso 1 Hacer
        Para j <- 0 Hasta capacidadTienda-1 Con Paso 1 Hacer
            Si tiendaProducto[i] <> Nulo Entonces
                Escribir(tiendaProducto[i] + "\t\t")
            Sino
                Escribir("X \t\t")
            FinSi
        FinPara
        Escribir("")
        Para i <- 0 Hasta capacidadTienda-1 Con Paso 1 Hacer
            Para j <- 0 Hasta tiendaPrecio[i,1] Con Paso 1 Hacer
                Si tiendaPrecio[i,j] <> 0.0 Entonces
                    Escribir tiendaPrecio[i,j] , "\t\t"
                    precioTotal <- tiendaPrecio[i,1] * tiendaPrecio[i,2]
                Sino
                    Escribir("X \t\t")
                FinSi
            FinPara
            Escribir("")
        FinPara
    FinPara
    
    Escribir"Su precio total es: " , precioTotal
    precioTotal <- precioTotal + (precioTotal * 0.12)
    Escribir"Aplicando el IVA: " , precioTotal
    
    Si precioTotal > 100 Entonces
        precioTotal <- precioTotal - (precioTotal * desc)
        Escribir"Gracias a su compra mayor a 100$, su total es de: " , precioTotal
    FinSi
FinProceso
