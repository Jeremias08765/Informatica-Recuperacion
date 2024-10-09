Algoritmo RompecabezasDeLetras
    // Declaración de variables
    Definir letrasMezcladas, palabraCorrecta, palabraFormada Como Cadena;
    
    Definir intentoValido Como Logico;
    
    // Inicialización de variables
    palabraCorrecta <- "ALGORITMO";  // La palabra correcta que el jugador debe formar
    letrasMezcladas <- "MLOGRAITO"; // Letras mezcladas
    intentoValido <- Falso;
    
    // Mostrar las letras mezcladas al jugador
    Escribir "Bienvenido al Rompecabezas de Letras";
    Escribir "Forma una palabra utilizando las siguientes letras:";
    Escribir letrasMezcladas;
    
    // Ciclo para permitir múltiples intentos hasta que se forme la palabra correcta
    Mientras intentoValido = Falso Hacer
        // Solicitar al jugador que forme una palabra
        Escribir "Ingresa la palabra formada:";
        Leer palabraFormada;
        
        // Verificar si la palabra formada es correcta
        Si palabraFormada = palabraCorrecta Entonces
            intentoValido <- Verdadero;
            Escribir "¡Correcto! Has formado la palabra: ", palabraCorrecta;
        Sino
            Escribir "Incorrecto. Intenta de nuevo.";
        FinSi
    FinMientras
    
    Escribir "Gracias por jugar al Rompecabezas de Letras.";
FinAlgoritmo