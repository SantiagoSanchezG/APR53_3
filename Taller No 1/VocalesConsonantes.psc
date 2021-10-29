// Vocales Y consonantes
// Elaborar un algoritmo que determine cuantas vocales y consonantes aparecen en un mensaje
//
// Realizado por: Santiago Sánchez Grisales
//         Email: santiagosanchez309942@correo.itm.edu.co
// Versión 1.0, septiembre del 2021

Algoritmo VocalesConsonantes
	Definir a, t Como Caracter
	Definir l, i, v, c Como Entero
	Escribir "Escribe una cadena de caracteres"
	leer a // Captura la cadena de caracteres
	a = MINUSCULAS(a) //Convierte la cadena a minusculas
	l = LONGITUD(a) // captura la longitud de la cadena
	Para i <- 0 Hasta l Con Paso 1 Hacer //Hace la cantidad de ciclo segun la logitud de la cadena
		t = SUBCADENA(a,i,i) // captura el caracter actual, (iterado en el ciclo)
		//Cuenta si hay una vocal (Detecta tildes)
		Si t == "a" o t == "e" o t == "i" o t == "o" o t == "u" o t == "á" o t == "é" o t == "í" o t == "ó" o t == "ú" Entonces
			v = v+1
		SiNo
			//Cuenta si las letras bcdfghjklmy esta en el caracter señalado
			Si t == "b" o t == "c" o t == "d" o t == "f" o t == "g" o t == "h" o t == "j" o t == "k" o t == "l"  o t == "m" o t == "y" Entonces
				c = c+1
			SiNo
				//Cuenta si las letras nñpqrstvwxz esta en el caracter señalado
				Si t == "n" o t == "ñ" o t == "p" o t == "q" o t == "r" o t == "s" o t == "t" o t == "v" o t == "w" o t == "x" o t == "z" Entonces
					c = c+1
				Fin Si
			Fin Si
		Fin Si
	Fin Para
	//Manda el mensaje a pantalla de los datos optenidos
	Escribir "Tiene:"
	Escribir v, " vocales"
	Escribir c, " Consonantes"
FinAlgoritmo
