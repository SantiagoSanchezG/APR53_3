// Cajero Automatico
//
// Diseño de un cajero electrónico con todas las funcionalidades del caso
//
// Realizado por: Santiago Sánchez Grisales
//         Email: santiagosanchez309942@correo.itm.edu.co
// Versión 1.0, octubre del 2021

Funcion espa ( n ) // Funcion para dar estetica
	Definir a Como Entero
	a <- n
	Definir i Como Entero
	Para i<-1 Hasta n Con Paso 1 Hacer
		Escribir "*                                           *"
	Fin Para
Fin Funcion

Algoritmo Cajero
	Definir opc Como Entero
	Definir sett, saldo Como Real
	saldo <- 1000000
	
	//Bienvenida y captura opcion menu
	Escribir "*********************************************"
	espa(1)
	Escribir "*     BIENVENIDO A SU CAJERO AUTOMATICO     *"
	espa(1)
	Escribir "*    1. Ingresar dinero en cuenta           *"
	Escribir "*    2. Retirar dinero de la cuenta         *"
	Escribir "*    3. Consultar saldo                     *"
	Escribir "*    4. Salir                               *"
	espa(1)
	Escribir "*********************************************"
	Escribir "Opcion: " Sin Saltar
	Leer opc
	Limpiar Pantalla
	
	Segun opc Hacer
		1: //Para ingresar dinero en la cuenta
			Escribir "*********************************************"
			espa(1)
			Escribir "*         INGRESAR DINERO EN CUENTA         *"
			espa(2)
			Escribir "*      Saldo actual: $",saldo
			espa(3)
			Escribir "*********************************************"
			Escribir "Digite el monto a cargar: " Sin Saltar
			leer sett
			Saldo <- saldo + seet
			Limpiar Pantalla
			Escribir "*********************************************"
			espa(1)
			Escribir "*         INGRESAR DINERO EN CUENTA         *"
			espa(2)
			Escribir "*      Saldo actual: $",saldo
			espa(3)
			Escribir "*********************************************"
		2: //Para retirar dinero de la cuenta
			Escribir "*********************************************"
			espa(1)
			Escribir "*        RETIRAR DINERO DE LA CUENTA        *"
			espa(2)
			Escribir "*      Saldo actual: $",saldo
			espa(3)
			Escribir "*********************************************"
			Escribir "Digite el monto a retirar: " Sin Saltar
			leer sett
			Limpiar Pantalla
			Si saldo >= sett Entonces
				saldo <- saldo - sett
				Escribir "*********************************************"
				espa(1)
				Escribir "*        RETIRAR DINERO DE LA CUENTA        *"
				espa(2)
				Escribir "*      Saldo actual: $",saldo
				espa(3)
				Escribir "*********************************************"
			SiNo
				Escribir "*********************************************"
				espa(1)
				Escribir "*        RETIRAR DINERO DE LA CUENTA        *"
				espa(1)
				Escribir "*             Saldo insuficiente            *"
				espa(2)
				Escribir "*      Saldo actual: $",saldo
				espa(1)
				Escribir "*********************************************"
			Fin Si
		3: //Para consultar saldo
			Escribir "*********************************************"
			espa(1)
			Escribir "*              CONSULTAR SALDO              *"
			espa(2)
			Escribir "*      Saldo actual: $",saldo
			espa(3)
			Escribir "*********************************************"
		4: //Mensaje de salida
			Escribir "*********************************************"
			espa(2)
			Escribir "*       Adios, gracias por preferirnos      *"
			espa(4)
			Escribir "*********************************************"
		De Otro Modo: //En caso de opcion no valida
			Escribir "*********************************************"
			espa(2)
			Escribir "*             Opcion no valida              *"
			espa(4)
			Escribir "*********************************************"
	Fin Segun
FinAlgoritmo
