// Unidades de Almacenamiento
// Elaborar un algoritmo que permita establecer cuantas unidades de almacenamiento (CDs,
// DVDs o USB) son necesarias para respaldar la información de un disco cuya capacidad se
// conoce y está dada en gigabyte (GB)
//
// Realizado por: Santiago Sánchez Grisales
//         Email: santiagosanchez309942@correo.itm.edu.co
// Versión 1.0, septiembre del 2021

Algoritmo UnidadesAlmacenamiento
	Definir t, CD, tem, d como Real
	Escribir "Escriba el tamaño de la información (GB)"
	Leer d // Captura el tamaño en GB
	t = d // Respalda el dato optenido para no volverlo a pedir
	// Calcula la cantidad de CDs necesarios
	tem = t / 0.7
	CD = REDON(tem)
	// Como la función RENDON puede redondear a un número inferior
	// En ese caso sumamos 1 al total(solo si tem - CD es negativo)
	t = tem - CD
	Si t > 0 Entonces
		CD = CD + 1
Fin Si
	Escribir "Se necesita ", CD, " de CDs"
	t = d // Recupera el dato entragado por el usuario
	tem = t / 4.7 // Calcula la cantidad de DVDs necesarios
	//Vuelve a repetir el proceso
	CD = REDON(tem)
	t = tem - CD
	Si t > 0 Entonces
		CD = CD + 1
	Fin Si
	Escribir "Se necesita ", CD, " de DVDs"
	// Lo mismo para USB de 8GB
	t = d
	tem = t / 8
	CD = REDON(tem)
	t = tem - CD
	Si t > 0 Entonces
		CD = CD + 1
	Fin Si
	Escribir "Se necesita ", CD, " de USB de 8GB"
	// Para USB de 16GB
	t = d
	tem = t / 16
	CD = REDON(tem)
	t = tem - CD
	Si t > 0 Entonces
		CD = CD + 1
	Fin Si
	Escribir "Se necesita ", CD, " de USB de 16 GB"
	//Para USB de 32GB
	t = d
	tem = t / 32
	CD = REDON(tem)
	t = tem - CD
	Si t > 0 Entonces
		CD = CD + 1
	Fin Si
	Escribir "Se necesita ", CD, " de USB de 32 GB"
FinAlgoritmo
