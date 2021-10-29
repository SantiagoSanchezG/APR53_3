// Punto uno base 10
// Diseñar e implementar un algoritmo que permita convertir un número real tanto positivo como negativo
// en base 10 a otra base y viceversa, mostrando en pantalla la conversión tanto la parte entera 
// como de la parte decimal
//
// El punto no específica si es con todos o con alguno de los sistemas númericos
// El algortimo traduce entre base 10 (decimal) y base 2 (binario)
// Todos los datos estan validados
//
// Realizado por: Santiago Sánchez Grisales
//         Email: santiagosanchez309942@correo.itm.edu.co
// Versión 1.0, octubre del 2021
//
//*********************************************************************************************
//************************************** FUNCIONES ********************************************
//*********************************************************************************************
//
//*** FUNCION Q2 ****
// Traduce de binario a decimal (Parte entera y decimal)
Funcion acum2 <- Q2 ( Num )             //Recibe un número binario previamente validado
	Definir NumE Como Caracter        //NumE: Guarda el número Como Caracter
	Definir i, ex, acum Como Entero   //Variables de control y acumuladores
	Definir dec, acum2 Como Real      //dec: Control parte racional, acum2: Acumulador global
	ex <- 1							   //ex: Funciona de exponente para la parte entera
	NumE <- CONVERTIRATEXTO(TRUNC(Num)) //Asigna como texto solo la parte entera
	//Itera [NumE] de deracha ha izquierda
	//Cuando hay "1" acumula el valor de [ex]
	//[ex] representa el valor de la potencia elevada a un valor x
	//En cada ciclo su valor es duplicado
	//Cuando hay "0" es obviado el acumulador
	Para i <- LONGITUD(NumE) Hasta 1 Con Paso -1 Hacer
		Si SUBCADENA(NumE,i,i) == "1" Entonces
			acum <- acum + ex
		FinSi
		ex <- ex * 2
	Fin Para
	//Ahora [NumE] carga una cadena con la parte decimal
	//Por cuestion de presion previo se suma 0.00000001
	//Esto para evitar 0.99 como en el caso de: 10000111.011
	NumE <- CONVERTIRATEXTO(Num - TRUNC(Num)+0.00000001)
	dec <- 0.5 //Representa el valor de la potencia elevada a un valor -x
	// En cada ciclo su valor es dividido entre 2
	//Similar al ciclo anterior(itera de izquierda a derecha)
	Para i <- 3 Hasta LONGITUD(NumE) Con Paso 1 Hacer
		Si SUBCADENA(NumE,i,i) == "1" Entonces
			acum2 <- acum2 + dec
		FinSi
		dec <- dec / 2
	FinPara
	acum2 <- acum2 + acum //Suma el acumulado de ambas partes
Fin Funcion
//
//*** FUNCION Q1 ***
// Traduce de decimal a binario (Parte entera y decimal)
Funcion Codigo <- Q1 ( Num )                  //Recibe un número decimal previamente validado
	Definir NumEntero, Modulo Como Entero   //NumEntero: Carga la parte entera del número
	Definir NumDecimal Como Real            //Modulo: Guarda el modulo de la division actual
	Definir Codigo, Codigo2 Como Caracter   //Codigo1 y 2 Son acumuladores de resultado
	NumEntero <- TRUNC(Num)           //Carga solo la parte entera
	NumDecimal <- Num - NumEntero     //Carga solo la parte decimal
	//Controla las divisiones y acumula los modulos
	Mientras NumEntero >= 2 Hacer
		Modulo <- NumEntero-(2*TRUNC(NumEntero/2))
		NumEntero <- TRUNC(NumEntero/2)
		Codigo <- Codigo + CONVERTIRATEXTO(Modulo)
	Fin Mientras
	//Ademas del los modulos guarda el ultimo resultado que dio la division
	Codigo <- Codigo + CONVERTIRATEXTO(NumEntero)
	//Reordena los digitos, ya que estos se leen de atras hacia adelante
	Para Modulo <- LONGITUD(Codigo) Hasta 1 Con Paso -1 Hacer
		Codigo2 <- Codigo2 + SUBCADENA(Codigo,Modulo,Modulo)
	FinPara
	Codigo <- Codigo2
	Codigo2 <- "" // Codigo2 Funciono como variable auxiliar, es limpiada para recibir los datos decimales
	//Controla si existen decimales
	Si NumDecimal <> 0 Entonces
		Codigo <- Codigo + "." //Al comprobarse que existe decimales se concatena un punto
		//Itera los digitos decimales
		//Se hace las multiplicaciones x2 para generar el codigo binario
		Para NumEntero <- 1 Hasta 6 Con Paso 1 Hacer
			NumDecimal <- NumDecimal * 2
			Codigo2 <- Codigo2 + CONVERTIRATEXTO(TRUNC(NumDecimal))
			Si NumDecimal >= 1 Entonces
				NumDecimal <- NumDecimal - TRUNC(NumDecimal)
			Fin Si
		Fin Para
		//Por ultimo se concatena la parte entera con la decimal
		//Para ser enviada como respuesta de la funcion 
		Codigo <- Codigo + Codigo2
	Fin Si
Fin Funcion
//
//*** EsNumero ***
//Valida el número dado por el usario que sea correcto
Funcion d <- EsNumero ( a , b)    //Recibe el número, y una opcion (para base 10 (1)/ para base 2 (2))
	Definir i,c, c2 como Entero //Variables de control
	Definir s como Caracter     //Almacena un caracter al tiempo (para iterar)
	Definir d Como Logico       //Se usa para dar respuesta como Falsa o Verdadera
	d <- Verdadero                //La variable queda en verdadero en caso de no encontrar errores.
	//Segun el parametro entra a verificar un número decimal o un número binario
	Segun b Hacer
		1:  //Para número decimal
			Para i <-1 Hasta Longitud(a) Con Paso 1 Hacer
				s <- Subcadena(a,i,i)
				Segun s Hacer
					"1":
					"2":
					"3":
					"4":
					"5":
					"6":
					"7":
					"8":
					"9":
					"0":
					".": //Condicionan la catidad de puntos y signos "-" (max 1)
						c <- c + 1
						Si c > 1 Entonces
							d <- Falso
						Fin Si
					"-":
						c2 <- c2 + 1
						Si c2 > 1 Entonces
							d <- Falso
						FinSi
				De Otro Modo:
					i <- Longitud(a)
					d <- Falso //Si encuentra signos diferentes responde falsa la funcion
				Fin segun
			Fin Para
		2: // Para números binarios
			Para i <-1 Hasta Longitud(a) Con Paso 1 Hacer
				s <- Subcadena(a,i,i)
				Segun s Hacer
					"0":
					"1":
					".":
						c <- c + 1
						Si c > 1 Entonces
							d <- Falso
						Fin Si
					"-":
						c2 <- c2 + 1
						Si c2 > 1 Entonces
							d <- Falso
						FinSi
				De Otro Modo:
					i = Longitud(a)
					d = Falso
				Fin Segun
			Fin Para
	Fin Segun
Fin Funcion
//
//**********************************************************************************************
//*************************************** INICIO ALGORITMO *************************************
//**********************************************************************************************
//
Algoritmo punto_uno
	Definir DatoIngresado Como Caracter //Guarda las cadenas ingresadas por el usario
	Definir NumeroEntero Como Entero    //Para el guardado de Números Enteros
	Definir NumeroReal Como Real        //Para el guardado de Números Reales
	Definir tf Como Logico              //Para el guardado de Booleanos
	//No sale de este ciclo hasta que se escriba "1" o "2"
	Repetir
		Escribir "Escoge una opcion"
		Escribir "1. De base 10 a base 2"
		Escribir "2. De base 2 a base 10"
		Leer DatoIngresado
		Si DatoIngresado == "1" o DatoIngresado == "2" Entonces
			tf <- Verdadero
		SiNo
			Limpiar Pantalla
			Escribir "***** La opcion escogida es incorrecta *****"
			Escribir ""
		Fin Si
	Hasta Que tf
	NumeroEntero <- ConvertirANumero(DatoIngresado) //Al comprobar el dato, entra a la variable
	Segun NumeroEntero Hacer
		1: // Para traduccir de decimal a binario
			//No sale de este ciclo hasta ingresar un número decimal valido
			Repetir
				Limpiar Pantalla
				Escribir "***** DE BASE 10 A BASE 2 *****"
				Escribir ""
				Si no tf Entonces
					Escribir "**El dato ingresado es erroneo **"
				Fin Si
				Escribir "Escribe un número base 10"
				Escribir "(Usa el punto para decimal)"
				Leer DatoIngresado
				tf = EsNumero(DatoIngresado, 1)
			Hasta Que tf
			Limpiar Pantalla
			Escribir "***** DE BASE 10 A BASE 2 *****"
			Escribir ""
			Escribir "Número base 10: " , DatoIngresado
			//Controla los resultados negativos / positivos
			//La cadena es transformada en numero y es enviada como parametro a Q1
			Si SUBCADENA(DatoIngresado,1,1) = "-" Entonces
				Escribir "Número base 2: -" , Q1(CONVERTIRANUMERO(SUBCADENA(DatoIngresado,2,LONGITUD(DatoIngresado))))
			SiNo
				Escribir "Número base 2: " , Q1(CONVERTIRANUMERO(DatoIngresado))
			Fin Si
		2: //Para traduccir de binario a decimal
			//No sale de este ciclo hasta ingresar un número binario valido
			Repetir
				Limpiar Pantalla
				Escribir "***** DE BASE 2 A BASE 10 *****"
				Escribir ""
				Si no tf Entonces
					Escribir "** El dato ingresado es erroneo **"
				FinSi
				Escribir "Escribe un número base 2"
				Escribir "(Usa el punto para decimal)"
				Leer DatoIngresado
				tf = EsNumero(DatoIngresado, 2)
			Hasta Que tf
			Limpiar Pantalla
			Escribir "***** DE BASE 2 A BASE 10 *****"
			Escribir ""
			Escribir "Número base 2: " , DatoIngresado
			//Controla los resultados negativos / positivos
			//La cadena es transformada en numero y es enviada como parametro a Q2
			Si SUBCADENA(DatoIngresado,1,1) = "-" Entonces
				Escribir "Número base 10: -" , Q2(CONVERTIRANUMERO(SUBCADENA(DatoIngresado,2,LONGITUD(DatoIngresado))))
			SiNo
				Escribir "Número base 10: " , Q2(CONVERTIRANUMERO(DatoIngresado))
			FinSi
	Fin Segun
FinAlgoritmo
