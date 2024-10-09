Proceso sin_titulo
    Definir palabra_oculta Como Cadena;
    Definir palabra_mostrada Como Cadena;
    Definir letra Como Caracter;
    Definir intentos_fallidos, max_fallos, i Como Entero;
    palabra_oculta <- "AMIGO FIEL"; 
    max_fallos <- 6;  
    intentos_fallidos <- 0;
    palabra_mostrada <- "" ; 
    Para i <- 1 Hasta Longitud(palabra_oculta) Hacer
        palabra_mostrada <- palabra_mostrada;
    Fin Para
    Mientras (intentos_fallidos < max_fallos) Y (palabra_mostrada <> palabra_oculta) Hacer
        Escribir "Palabra: ", palabra_mostrada;
        Escribir "Intentos fallidos: ", intentos_fallidos, "/", max_fallos;
        Leer letra;
        letra <- Mayusculas(letra);
        Si (letra, palabra_oculta) > 0 Entonces
            Para i <- 1 Hasta Longitud(palabra_oculta) Hacer
                Si Subcadena(palabra_oculta, i, i) = letra Entonces
                    palabra_mostrada<-letra;
                Fin Si
            Fin Para
        Sino
            Escribir "Fallo. La letra no está en la palabra.";
            intentos_fallidos <- intentos_fallidos + 1;
        Fin Si
    Fin Mientras
    Si palabra_mostrada = palabra_oculta Entonces
        Escribir "¡Felicidades! Has adivinado la palabra: ", palabra_oculta;
    Sino
        Escribir "Lo siento, has alcanzado el límite de fallos.";
        Escribir "La palabra correcta era: ", palabra_oculta;
    Fin Si
	FinProceso