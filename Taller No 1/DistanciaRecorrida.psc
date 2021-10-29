// Distancia recorrida
// Se desea calcular la distancia recorrida (m) por un vehículo con velocidad contante (m/s)
// durante un tiempo T(sec), considerar que es un Movimiento Rectilineo Uniforme(MRU)
//
// Realizado por: Santiago Sánchez Grisales
//         Email: santiagosanchez309942@correo.itm.edu.co
// Versión 1.0, septiembre del 2021

Algoritmo DistanciaRecorrida
	//Captura de los datos velocidad y tiempo
	Definir v, t como Real
	Escribir "Velocidad: "
	Leer v
	Escribir "Tiempo: "
	Leer t
	Escribir "La distancia recorrida es de: ", (v*t) //para calcular la disntacia recorrida se multiplica velocidad por tiempo (solo para MRU)
FinAlgoritmo
