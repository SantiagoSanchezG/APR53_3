// Ejerecicio1
//
// Desarrollar un Script (con pseudocódigo y diagrama de flujo) que permita mostrar el nombre del usuario, en forma horizontal o vertical. 
// Construyendo cada letra del nombre en base a símbolos predefinidos o determinado por el usuario (Por ejemplo: "&", "#", "%", "*", etc?)
//
// Realizado por: Santiago Sánchez Grisales
//         Email: santiagosanchez309942@correo.itm.edu.co
// Versión 1.0, octubre del 2021

// Funcion Imp, tiene la funcion de desplegar en pantalla linea a linea el mensaje
// Letra {I}: determina la letra a desplegar
// Linea {k}: Determina que parte de la letra desplega (existen 7 lineas)
// Diseño {c}: Este es el caracter escogido por el usuario para el diseño del mensaje
Funcion Imp ( Letra, linea, diseño )
	Definir l Como Entero
	l <- Letra
	Definir k Como Entero
	k <- linea
	Definir c Como Caracter
	c <- diseño + " " //El espacio es para que sea uniforme con la distancia entre lineas
	Definir x Como Caracter
	x <- "  " // Representa los espacion en blanco
	Escribir " " Sin Saltar //Para conservar espacios
	Segun l Hacer // Segun la letra a desplegar
			//Cada letra es representada por un numero por ejemplo a = 1
			//Cada uno tiene un diseño por linea las {x} son espacios, las {c} son caracter
			//Como en el diseño hay varias lineas que son iguales se optimizo para no escribir codigo de mas
		1:
			Si k == 1 o k == 4 Entonces
				Escribir c,c,c,c Sin Saltar
			SiNo
				Escribir c,x,x,c Sin Saltar
			Fin Si
		2:
			Si k == 1 o k == 4 o k == 7 Entonces
				Escribir c,c,c,x Sin Saltar
			SiNo
				Escribir c,x,x,c Sin Saltar
			Fin Si
		3:
			Segun k Hacer
				1:
					Escribir x,c,c,x Sin Saltar
				2:
					Escribir c,x,x,c Sin Saltar
				6:
					Escribir c,x,x,c Sin Saltar
				7:
					Escribir x,c,c,x Sin Saltar
				De Otro Modo:
					Escribir c,x,x,x Sin Saltar
			Fin Segun
		4:
			Si k == 1 o k == 7 Entonces
				Escribir c,c,c,x Sin Saltar
			SiNo
				Escribir c,x,x,c Sin Saltar
			Fin Si
		5:
			Segun k Hacer
				1:
					Escribir c,c,c,c Sin Saltar
				4:
					Escribir c,c,c,x Sin Saltar
				7:
					Escribir c,c,c,c Sin Saltar
				De Otro Modo:
					Escribir c,x,x,x Sin Saltar
			Fin Segun
		6:
			Segun k Hacer
				1:
					Escribir c,c,c,c Sin Saltar
				4:
					Escribir c,c,c,x Sin Saltar
				De Otro Modo:
					Escribir c,x,x,x Sin Saltar
			Fin Segun
		7:
			Segun k Hacer
				1:
					Escribir x,c,c,x Sin Saltar
				2:
					Escribir c,x,x,c Sin Saltar
				5:
					Escribir c,x,c,c Sin Saltar
				6:
					Escribir c,x,x,c Sin Saltar
				7:
					Escribir x,c,c,x Sin Saltar
				De Otro Modo:
					Escribir c,x,x,x Sin Saltar
			Fin Segun
		8:
			Si k == 4 Entonces
				Escribir c,c,c,c Sin Saltar
			SiNo
				Escribir c,x,x,c Sin Saltar
			Fin Si
		9:
			Escribir c Sin Saltar
		10:
			Segun k Hacer
				5:
					Escribir c,x,x,c Sin Saltar
				6:
					Escribir c,x,x,c Sin Saltar
				7:
					Escribir x,c,c,x Sin Saltar
				De Otro Modo:
					Escribir x,x,x,c Sin Saltar
			Fin Segun
		11:
			Segun k Hacer
				3:
					Escribir c,x,c,x Sin Saltar
				4:
					Escribir c,c,x,x Sin Saltar
				5:
					Escribir c,x,c,x Sin Saltar
				De Otro Modo:
					Escribir c,x,x,c Sin Saltar
			Fin Segun
		12:
			Si k == 7 Entonces
				Escribir c,c,c,c Sin Saltar
			SiNo
				Escribir c,x,x,x Sin Saltar
			Fin Si
		13:
			Segun k Hacer
				3:
					Escribir c,c,x,x,x,c,c Sin Saltar
				4:
					Escribir c,x,c,x,c,x,c Sin Saltar
				5:
					Escribir c,x,x,c,x,x,c Sin Saltar
				De Otro Modo:
					Escribir c,x,x,x,x,x,c Sin Saltar
			Fin Segun
		14:
			Segun k Hacer
				3:
					Escribir c,c,x,x,c Sin Saltar
				4:
					Escribir c,x,c,x,c Sin Saltar
				5:
					Escribir c,x,x,c,c Sin Saltar
				De Otro Modo:
					Escribir c,x,x,x,c Sin Saltar
			Fin Segun
		15:
			Si k == 1 o k == 7 Entonces
				Escribir x,c,c,x Sin Saltar
			SiNo
				Escribir c,x,x,c Sin Saltar
			Fin Si
		16:
			Segun k Hacer
				1:
					Escribir c,c,c,x Sin Saltar
				5:
					Escribir c,c,c,x Sin Saltar
				6:
					Escribir c,x,x,x Sin Saltar
				7:
					Escribir c,x,x,x Sin Saltar
				De Otro Modo:
					Escribir c,x,x,c Sin Saltar
			Fin Segun
		17:
			Segun k Hacer
				1:
					Escribir x,c,c,x,x Sin Saltar
				6:
					Escribir c,x,c,c,x Sin Saltar
				7:
					Escribir x,c,c,x,c Sin Saltar
				De Otro Modo
					Escribir c,x,x,c,x Sin Saltar
			Fin Segun
		18:
			Segun k Hacer
				1:
					Escribir c,c,c,x Sin Saltar
				5:
					Escribir c,c,c,x Sin Saltar
				6:
					Escribir c,x,c,x Sin Saltar
				De Otro Modo:
					Escribir c,x,x,c Sin Saltar
			Fin Segun
		19:
			Segun k Hacer
				2:
					Escribir c,x,x,c Sin Saltar
				3:
					Escribir c,x,x,x Sin Saltar
				5:
					Escribir x,x,x,c Sin Saltar
				6:
					Escribir c,x,x,c Sin Saltar
				De Otro Modo:
					Escribir x,c,c,x Sin Saltar
			Fin Segun
		20:
			Si k == 1 Entonces
				Escribir c,c,c,c,c Sin Saltar
			SiNo
				Escribir x,x,c,x,x Sin Saltar
			Fin Si
		21:
			Si k == 7 Entonces
				Escribir x,c,c,x Sin Saltar
			SiNo
				Escribir c,x,x,c Sin Saltar
			Fin Si
		22:
			Segun k Hacer
				6:
					Escribir x,c,x,c,x Sin Saltar
				7:
					Escribir x,x,c,x,x Sin Saltar
				De Otro Modo:
					Escribir c,x,x,x,c Sin Saltar
			Fin Segun
		23:
			Segun k Hacer
				6:
					Escribir x,c,x,c,x,c,x,c,x Sin Saltar
				7:
					Escribir x,x,c,x,x,x,c,x,x Sin Saltar
				De Otro Modo:
					Escribir c,x,x,x,c,x,x,x,c Sin Saltar
			Fin Segun
		24:
			Segun k Hacer
				3:
					Escribir x,c,x,c,x Sin Saltar
				4:
					Escribir x,x,c,x,x Sin Saltar
				5:
					Escribir x,c,x,c,x Sin Saltar
				De Otro Modo:
					Escribir c,x,x,x,c Sin Saltar
			Fin Segun
		25:
			Segun k Hacer
				1:
					Escribir c,x,x,x,c Sin Saltar
				2:
					Escribir c,x,x,x,c Sin Saltar
				3:
					Escribir c,x,x,x,c Sin Saltar
				4:
					Escribir x,c,x,c,x Sin Saltar
				De Otro Modo:
					Escribir x,x,c,x,x Sin Saltar
			Fin Segun
		26:
			Segun k Hacer
				2:
					Escribir x,x,x,x,c Sin Saltar
				3:
					Escribir x,x,x,c,x Sin Saltar
				4:
					Escribir x,x,c,x,x Sin Saltar
				5:
					Escribir x,c,x,x,x Sin Saltar
				6:
					Escribir c,x,x,x,x Sin Saltar
				De Otro Modo:
					Escribir c,c,c,c,c Sin Saltar
			Fin Segun
		De Otro Modo:
	Fin Segun
	Escribir x,x,x Sin Saltar //Controla el espacio entre letras
Fin Funcion

//****************************************************************
//********************** Inicia Algoritmo ************************
//****************************************************************
Algoritmo Recuperacion40_1
	//Las variables [numero1] [numero2] sirven de apuntadores y de contadores
	// [posicion] funciona de apuntador
	//[nombre] guarda la cadena dada por usuario, luego es utilizada para guardar el diseño
	//[logic] funciona de bandera
	//[CantidadEspacios] para tener un control en la separacion de palabras
	Definir numero1 Como Entero
	Definir numero2 Como Entero
	Definir posicion Como Entero
	Definir nombre Como Caracter
	Definir CantidadEspacios Como Entero
	Definir logic Como Logico
	CantidadEspacios <- 1 // Inicia en una, ya que minimo el sistema actua una vez
	// Bienvenida, solo es estetico, no cumple alguna funcion logica
	Escribir "****************************"
	Escribir "******** Bienvenid@ ********"
	Escribir "****************************"
	Escribir ""
	//valida la cadena y cuenta el n de espacios
	Repetir
		logic <- Verdadero
		Escribir "Para comenzar, ¿Cual es tu nombre?"
		Escribir "Permite caracteres del alfabeto ingles"
		Leer nombre
		nombre <- Mayusculas(nombre)
		Para numero1<-1 Hasta Longitud(nombre) Con Paso 1 Hacer
			Segun Subcadena(nombre,numero1,numero1) Hacer
				"A":
				"B":
				"C":
				"D":
				"E":
				"F":
				"G":
				"H":
				"I":
				"J":
				"K":
				"L":
				"M":
				"N":
				"O":
				"P":
				"Q":
				"R":
				"S":
				"T":
				"U":
				"V":
				"W":
				"X":
				"Y":
				"Z":
				" ":
					CantidadEspacios <- CantidadEspacios + 1
				De Otro Modo:
					Limpiar Pantalla
					Escribir "*** La cadena de texto es incorrecta ***"
					logic <- Falso
			Fin Segun
		Fin Para
	Hasta Que logic
	Limpiar Pantalla
	
	
numero2 <- 1
posicion <- 1
//Crea un vector con la cantidad de espacios, para cada palabra
Definir palabras Como Caracter
Dimension palabras(CantidadEspacios)
//Divide la cadena por palabras
Para numero1<-1 Hasta Longitud(nombre) Con Paso 1 Hacer
	Si Subcadena(nombre,numero1,numero1) == " " Entonces //Toma por referencia los espacios
		Repetir
			Si Longitud(palabras(numero2)) == 0 Entonces
				palabras(numero2) <- Subcadena(nombre,posicion,(numero1-1))
				posicion <- numero1 + 1
				numero2 <- numero2 + 1
				logic <- Verdadero
			SiNo
				numero2 <- numero2 + 1
				numero1 <- numero1 - 1
				logic <- Falso
			Fin Si
		Hasta Que logic
	SiNo
		Si Longitud(nombre) == 1 Entonces
			palabras(1) <- nombre
		Fin Si
	Fin Si
Fin Para
Si Longitud(nombre) <> 1 Entonces
	palabras(numero2) <- Subcadena(nombre,posicion,numero1)//guarda los ultimos caracteres despues del ultimo espacio
Fin Si

//Valida y guarda el caracter diseño establecido por el usuario, es guardado en la variable nombre
	Repetir
		Escribir "Ahora, escribe un caracter para establecer el diseño: " Sin Saltar
		Leer nombre
		Si Longitud(nombre) == 1 Entonces
			logic <- Verdadero
		SiNo
			logic <- Falso
			Limpiar Pantalla
			Escribir "*** El dato ingresado es erroneo ***"
		Fin Si
	Hasta Que logic
	
	
	Para numero1<- 1 Hasta CantidadEspacios Con Paso 1 Hacer //Para iterar las palabras
		Para numero2<-1 Hasta 7 Con Paso 1 Hacer //para iterar en lineas
			Para posicion<- 1 Hasta Longitud(palabras(numero1)) Con Paso 1 Hacer //para iterar los caracteres
				//Segun la ubicacion en pantalla que se este imprimiendo va los parametros
				//ejemplo: si es la e en la linea 5 es: (5,5,$)
				Segun Subcadena(palabras(numero1),posicion,posicion) Hacer
					"A":
						Imp(1,numero2,nombre)
					"B":
						Imp(2,numero2,nombre)
					"C":
						Imp(3,numero2,nombre)
					"D":
						Imp(4,numero2,nombre)
					"E":
						Imp(5,numero2,nombre)
					"F":
						Imp(6,numero2,nombre)
					"G":
						Imp(7,numero2,nombre)
					"H":
						Imp(8,numero2,nombre)
					"I":
						Imp(9,numero2,nombre)
					"J":
						Imp(10,numero2,nombre)
					"K":
						Imp(11,numero2,nombre)
					"L":
						Imp(12,numero2,nombre)
					"M":
						Imp(13,numero2,nombre)
					"N":
						Imp(14,numero2,nombre)
					"O":
						Imp(15,numero2,nombre)
					"P":
						Imp(16,numero2,nombre)
					"Q":
						Imp(17,numero2,nombre)
					"R":
						Imp(18,numero2,nombre)
					"S":
						Imp(19,numero2,nombre)
					"T":
						Imp(20,numero2,nombre)
					"U":
						Imp(21,numero2,nombre)
					"V":
						Imp(22,numero2,nombre)
					"W":
						Imp(23,numero2,nombre)
					"X":
						Imp(24,numero2,nombre)
					"Y":
						Imp(25,numero2,nombre)
					"Z":
						Imp(26,numero2,nombre)
					De Otro Modo:
				Fin Segun
			Fin Para
			Escribir " " //Controla el espaciado entre letras
		Fin Para
		Escribir "" //Controla el espaciado entre lineas
		Escribir ""
	Fin Para
FinAlgoritmo
