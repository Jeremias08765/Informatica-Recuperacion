Algoritmo sin_titulo
    //Definir variables
    Definir n1,n2,opc, res Como Entero;
    
    // pedir datos de entrada
    Escribir "Ingrese numero 1";
    Leer n1;
    Escribir "Ingrese numero 2";
    Leer n2;
    
    
    //opciones
    Escribir "Ingrese una opcion";
    Escribir "1, sumar";
    Escribir "2, restar";
    Escribir "3, multiplicar";
    Leer opc;
    
    //Proceso 
    Segun opc Hacer
        1:
            res = n1 + n2;
            Escribir "La suma es ", res;
        2:
            res = n1 - n2;
            Escribir "La resta es ", res;
        3:
            res =n1 * n2;
            Escribir "La multiplicacion es ", res; 
        De Otro Modo:
            Escribir "Opción incorrecta";
    FinSegun
FinAlgoritmo