// Punto cuatro codigo morse 
// Diseñar e implementar un algoritmo que permite representar un mensaje en código Morse
//
// Realizado por: Santiago Sánchez Grisales
//         Email: santiagosanchez309942@correo.itm.edu.co
// Versión 1.0, octubre del 2021

Algoritmo punto_cuatro
	Definir a,s Como Caracter //a: Va ha contener la cadena original dada por el usuario, s: Iterar cada uno de los caracteres de la cadena.
	Definir b, d Como Entero //b: Va ha contener la longitud de la cadena, d: Variable de control del ciclo para
	Escribir "Escriba la cadena a traducir"
	Leer a
	a <- minusculas(a) //Asegura que toda la cadena sea minuscula, de esa manera se puede escluir las mayusculas en la traduccion.
	b<-Longitud(a) //Toma la logitud de la cadena
	Para d <-1 Hasta b Con Paso 1 Hacer //Itera la cadena
		s<-subcadena(a,d,d)//guarda el caracter actual
		//Busca el caracter en las opciones cargadas (dadas en la tabla); de no encontrarlo escribe "?"
		//Ademas fuera de la tabla se agrego el "/" para representar los espacios 
		Segun s Hacer
			"a": Escribir ".- " sin saltar
			"b": Escribir "-... " sin saltar
			"c": Escribir "-.-. " sin saltar
			"d": Escribir "-.. " sin saltar
			"e": Escribir ". " sin saltar
			"f": Escribir "..-. " sin saltar
			"g": Escribir "--. " sin saltar
			"h": Escribir ".... " sin saltar
			"i": Escribir ".. " sin saltar
			"j": Escribir ".--- " sin saltar
			"k": Escribir "-.- " sin saltar
			"l": Escribir ".-.. " sin saltar
			"m": Escribir "-- " sin saltar
			"n": Escribir "-. " sin saltar
			"o": Escribir "--- " sin saltar
			"p": Escribir ".--. " sin saltar
			"q": Escribir "--.- " sin saltar
			"r": Escribir ".-. " sin saltar
			"s": Escribir "... " sin saltar
			"t": Escribir "- " sin saltar
			"u": Escribir "..- " sin saltar
			"v": Escribir "...- " sin saltar
			"w": Escribir ".-- " sin saltar
			"x": Escribir "-..- " sin saltar
			"y": Escribir "-.-- " sin saltar
			"z": Escribir "--.. " sin saltar
			"1": Escribir ".---- " sin saltar
			"2": Escribir "..--- " sin saltar
			"3": Escribir "...-- " sin saltar
			"4": Escribir "....- " sin saltar
			"5": Escribir "..... " sin saltar
			"6": Escribir "-.... " sin saltar
			"7": Escribir "--... " sin saltar
			"8": Escribir "---.. " sin saltar
			"9": Escribir "----. " sin saltar
			"0": Escribir "----- " sin saltar
			" ": Escribir "/ " sin saltar
			De Otro Modo:
				Escribir "? " sin saltar
		Fin Segun
	Fin Para
	Escribir ""//Para finalizar hace un salto de linea
FinAlgoritmo