// Determinar Cuadrante
// Dado el valor de un ángulo, determinar en qué cuadrante se encuentra
//
// Realizado por: Santiago Sánchez Grisales
//         Email: santiagosanchez309942@correo.itm.edu.co
// Versión 1.0, septiembre del 2021

Algoritmo DeterminarCuadrante
	Definir a Como Real
	Escribir "Escriba el ángulo a calcular (sin caracteres especiales)"
	leer a //Captura el angulo dado por el usuario
	// si el angulo es negativo se transforma a positivo 
	Si a < 0 Entonces
		a = a * (-1)
	//Existen angulos de vuelta completa o varias vueltas
	//En las siguientes lineas quita todas las vueltas (Si existe)
	SiNo
		Mientras a > 360 Hacer
			a = a - 360
		Fin Mientras
	Fin Si
	Si a > -1 y a < 90 Entonces //Rango para cuandrante 1
		Escribir "Cuadrante 1"
	SiNo
		Si a > 89 y a < 180 Entonces //Rango para cuadrante 2
			Escribir "Cuadrante 2"
		SiNo
			Si a > 179 y a < 270 Entonces //Rango para cuadrante 3
				Escribir "Cuadrante 3"
			SiNo
				Escribir "Cuadrante 4" //como ya fue descartado la vuelva completa y los cuadrantes del 1 al 3 solo queda el 4
			Fin Si
		Fin Si
	Fin Si
FinAlgoritmo
