// Unidades de Almacenamiento
// Elaborar un algoritmo que permita establecer cuantas unidades de almacenamiento (CDs,
// DVDs o USB) son necesarias para respaldar la informaci�n de un disco cuya capacidad se
// conoce y est� dada en gigabyte (GB)
//
// Realizado por: Santiago S�nchez Grisales
//         Email: santiagosanchez309942@correo.itm.edu.co
// Versi�n 1.0, septiembre del 2021

Algoritmo UnidadesAlmacenamiento
	Definir t, CD, tem, d como Real
	Escribir "Escriba el tama�o de la informaci�n (GB)"
	Leer d // Captura el tama�o en GB
	t = d // Respalda el dato optenido para no volverlo a pedir
	// Calcula la cantidad de CDs necesarios
	tem = t / 0.7
	CD = REDON(tem)
	// Como la funci�n RENDON puede redondear a un n�mero inferior
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
