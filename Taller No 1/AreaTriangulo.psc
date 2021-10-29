// �rea de tr�angulo
// Calcular el �rea de un tri�ngulo en base a sus tres lados y al valor de semiper�metro del mismo
//
// Realizado por: Santiago S�nchez Grisales
//         Email: santiagosanchez309942@correo.itm.edu.co
// Versi�n 1.0, septiembre del 2021

Algoritmo AreaTriangulo
	// captura de medida de los lados
	Definir a, b, c, s Como Real
	Escribir "Lado 1: "
	Leer a
	Escribir "Lado 2: "
	Leer b
	Escribir "Lado 3: "
	Leer c
	
	s = a + b + c // calcula el per�metro
	s = s/2 // calcular el semiper�metro
	Escribir "El �rea del tri�ngulo es: ", (RAIZ(s*(s-a)*(s-b)*(s-c)))
FinAlgoritmo
