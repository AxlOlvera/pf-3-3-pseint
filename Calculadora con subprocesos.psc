SubProceso Sumar(a)
	Limpiar Pantalla;
	
	Definir cant, i Como Entero;
	Definir result, numeritos Como Real;
	
	Escribir "Haz seleccionado la opción de sumar. Ingresa la cantidad de números que quieres sumar:";
	leer cant;
	
	dimension numeritos[cant];
	result <- 0;
	Para i<-0 Hasta cant-1 Hacer
		Limpiar Pantalla;
		
		Escribir "Ingrese el número ", i+1, " de ", cant, " y presione ENTER";
		Escribir "Tu total hasta ahora es ", result;
		si i=0 Entonces
			leer numeritos[i];
			result <- numeritos[i];
		SiNo
			leer numeritos[i];
			result <- result - numeritos [i];
		FinSi
		
	Fin Para
	
	Escribir "El resultado de su suma ha sido: ", result;
	
FinSubProceso

//**********************************************************************************************************************************

SubProceso Restar(b)
	Limpiar Pantalla;
	
	Definir cant, i Como Entero;
	Definir result, numeritos Como Real;
	
	Escribir "Haz seleccionado la opción de Restar. Ingresa la cantidad de números que quieres restar:";
	leer cant;
	
	dimension numeritos[cant];
	result <- 0;
	
	Para i<-0 Hasta cant-1 Hacer
		Escribir "Ingrese el número ", i+1, " de ", cant, " y presione ENTER";
		Escribir "Tu total hasta ahora es ", result;
		leer numeritos[i];
		result <- result - numeritos[i];
	Fin Para
	
	Escribir "El resultado de su resta ha sido: ", result;
	
	

FinSubProceso

//**********************************************************************************************************************************

SubProceso  Dividir(c)
	Limpiar Pantalla;
	
	Definir cant, i Como Entero;
	Definir result, numeritos Como Real;
	
	Escribir "Haz seleccionado la opción de dividir. Ingresa la cantidad de números que quieres dividir:";
	leer cant;
	
	dimension numeritos[cant];
	result <- 0;
	
	Para i<-0 Hasta cant-1 Hacer
		Escribir "Ingrese el número ", i+1, " de ", cant, " y presione ENTER";
		Escribir "Tu total hasta ahora es ", result;
		leer numeritos[i];
		result <- result / numeritos[i];
	Fin Para
	
	Escribir "El resultado de su división ha sido: ", result;
	
	
	
FinSubProceso

//**********************************************************************************************************************************

SubProceso  Multiplicar(d)
	Limpiar Pantalla;
	
	Definir cant, i Como Entero;
	Definir result, numeritos Como Real;
	
	Escribir "Haz seleccionado la opción de multiplicar. Ingresa la cantidad de números que quieres multiplicar:";
	leer cant;
	
	dimension numeritos[cant];
	result <- 0;
	
	Para i<-0 Hasta cant-1 Hacer
		Escribir "Ingrese el número ", i+1, " de ", cant, " y presione ENTER";
		Escribir "Tu total hasta ahora es ", result;
		leer numeritos[i];
		result <- result * numeritos[i];
	Fin Para
	
	Escribir "El resultado de su multiplicación ha sido: ", result;
	
	
FinSubProceso

//**********************************************************************************************************************************

SubProceso optionSelected <- MenuOpciones(m)
	
	Definir optionSelected Como Caracter;
	//Opcion para reiniciar o salir del programa
	Escribir "¿Desea continuar con otra operación o salir de la calculadora? (y/n)";
	leer optionSelected;                                  
	Mientras optionSelected <> 'y' y optionSelected <> 'n' Hacer
		Escribir "Ingresa una opción correcta: y = reiniciar; n = salir";
		Leer  optionSelected;
	FinMientras
	 
FinSubProceso

//==================================================================================================================================
//==================================================================================================================================

Algoritmo CalculadoraSubprocesos
	//Variables
	Definir mainMenu Como caracter;
	Definir option Como Entero;
		
	mainMenu <- 'y';
	Mientras mainMenu = 'y' Hacer
		
		//Menu
		Escribir "Ingrese el número de la opción deseada:";
		Escribir "1. Sumar";
		Escribir "2. Restar";
		Escribir "3. Dividir";
		Escribir "4. Multiplicar";
		
		Leer option;
		
		Segun option Hacer
			caso 1:
				Sumar(Verdadero);
				
			caso 2:
				Restar(Verdadero);	
					
			caso 3:
				Dividir(Verdadero); 
				
			caso 4:
				Multiplicar(Verdadero);
				
			De Otro Modo:
				Escribir "Por favor, sleccione una opción válida del 1 al 4";				
		Fin Segun
			
		mainMenu <- MenuOpciones(Verdadero);
		Limpiar Pantalla;		
	Fin Mientras
FinAlgoritmo
