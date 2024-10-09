Algoritmo JuegoDeLaVida
    Definir matriz[10,10] Como Entero
    Definir nuevaMatriz[10,10] Como Entero
    Definir i, j, k, l, vecinosVivos Como Entero
	
    // Inicialización de la matriz con valores aleatorios (0 o 1)
    Para i <- 1 Hasta 10
        Para j <- 1 Hasta 10
            matriz[i,j] <- Aleatorio(0,1)
        FinPara
    FinPara
	
    // Mostrar la matriz inicial
    Escribir "Matriz Inicial:"
    Para i <- 1 Hasta 10
        Para j <- 1 Hasta 10
            Escribir Sin Saltar matriz[i,j], " "
        FinPara
        Escribir ""
    FinPara
	
    // Calcular la nueva generación
    Para i <- 1 Hasta 10
        Para j <- 1 Hasta 10
            vecinosVivos <- 0
            // Contar vecinos vivos
            Para k <- i-1 Hasta i+1
                Para l <- j-1 Hasta j+1
                    Si (k >= 1 Y k <= 10) Y (l >= 1 Y l <= 10) Entonces
                        Si (k <> i O l <> j) Entonces
                            vecinosVivos <- vecinosVivos + matriz[k,l]
                        FinSi
                    FinSi
                FinPara
            FinPara
			
            // Aplicar las reglas del juego
            Si matriz[i,j] = 1 Entonces
                Si vecinosVivos = 2 O vecinosVivos = 3 Entonces
                    nuevaMatriz[i,j] <- 1
                Sino
                    nuevaMatriz[i,j] <- 0
                FinSi
            Sino
                Si vecinosVivos = 3 Entonces
                    nuevaMatriz[i,j] <- 1
                Sino
                    nuevaMatriz[i,j] <- 0
                FinSi
            FinSi
        FinPara
    FinPara
	
    // Mostrar la nueva matriz
    Escribir "Matriz Nueva Generación:"
    Para i <- 1 Hasta 10
        Para j <- 1 Hasta 10
            Escribir Sin Saltar nuevaMatriz[i,j], " "
        FinPara
        Escribir ""
    FinPara
	
FinAlgoritmo