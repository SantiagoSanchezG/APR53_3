// Área de tríangulo
// Calcular el área de un triángulo en base a sus tres lados y al valor de semiperímetro del mismo
//
// Realizado por: Santiago Sánchez Grisales
//         Email: santiagosanchez309942@correo.itm.edu.co
// Versión 1.0, septiembre del 2021

Algoritmo AreaTriangulo
	// captura de medida de los lados
	Definir a, b, c, s Como Real
	Escribir "Lado 1: "
	Leer a
	Escribir "Lado 2: "
	Leer b
	Escribir "Lado 3: "
	Leer c
	
	s = a + b + c // calcula el perímetro
	s = s/2 // calcular el semiperímetro
	Escribir "El área del triángulo es: ", (RAIZ(s*(s-a)*(s-b)*(s-c)))
FinAlgoritmo
