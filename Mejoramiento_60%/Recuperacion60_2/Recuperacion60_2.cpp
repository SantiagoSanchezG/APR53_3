// N�meros romanos
//
//  Representar cualquier valor num�rico en n�meros Romanos, teniendo en cuenta todas
// las reglas de dicho sistema de representaci�n num�rica
//
// Realizado por: Santiago S�nchez Grisales
//         Email: santiagosanchez309942@correo.itm.edu.co
// Versi�n 1.0, octubre del 2021

#include <iostream>
#include <conio.h>
#include <string.h>
#include <stdlib.h>

using namespace std;

int main(){
    bool logic = false; //Funciona como bandera
	char numm[30]; //Para capturar la cadenada dada por el usuario
	// num = para el numero completo
	// uni = unidades
	// dec = decenas
	// cen = centenas
	// mil = millares
	int num,uni,dec,cen,mil;

	//Captura y valida el n�mero dado por el usuario
	do{
	cout<<"********** N"<<char(163)<<"MEROS ROMANOS **********\n"<<endl;
	if(logic){
        cout<<"****** el n"<<char(163)<<"mero ingresado es incorrecto ******"<<endl;
	}
	cout<<"Digite un n"<<char(163)<<"mero entero: "; cin.getline(numm,30,'\n');
	for(int i = 0; i < strlen(numm);i++){
            switch(numm[i]){
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                    logic = false;
                    break;
                default:
                    logic = true;
                    break;
            }
            if(logic){
                break;
            }
	}
	system("cls");
	}while(logic);
	num = atoi(numm); // Una vez validado es tranformado a n�mero (int)

    cout<<"********** N"<<char(163)<<"MEROS ROMANOS **********\n"<<endl;
	cout<<"Su n"<<char(163)<<"mero en romano es: ";

	while(num > 3000){ // si es muy grande es reducido
        num /= 10;
        cout<<"~"; // imprime simbolo para indicar que no es preciso
	}

    //para descomponer el numero
	uni = num%10; num /= 10;
	dec = num%10; num /= 10;
	cen = num%10; num /= 10;
	mil = num%10; num /= 10;


// imprime la simbologia de los millares
	switch(mil){
		case 1: cout<<"M";break;
		case 2: cout<<"MM"; break;
		case 3: cout<<"MMM";break;
	}
// imprime la simbologia de las centenas
	switch(cen){
		case 1: cout<<"C";break;
		case 2: cout<<"CC";break;
		case 3: cout<<"CCC";break;
		case 4: cout<<"CD";break;
		case 5: cout<<"D";break;
		case 6: cout<<"DC";break;
		case 7: cout<<"DCC";break;
		case 8: cout<<"DCCC";break;
		case 9: cout<<"CM";break;
	}
//imprime la simbologia de las decenas
	switch(dec){
		case 1: cout<<"X";break;
		case 2: cout<<"XX";break;
		case 3: cout<<"XXX";break;
		case 4: cout<<"XL";break;
		case 5: cout<<"L";break;
		case 6: cout<<"LX";break;
		case 7: cout<<"LXX";break;
		case 8: cout<<"LXXX";break;
		case 9: cout<<"XC";break;
	}
//imprime la simbologia de las unidades
	switch(uni){
		case 1: cout<<"I";break;
		case 2: cout<<"II";break;
		case 3: cout<<"III";break;
		case 4: cout<<"IV";break;
		case 5: cout<<"V";break;
		case 6: cout<<"VI";break;
		case 7: cout<<"VII";break;
		case 8: cout<<"VIII";break;
		case 9: cout<<"IX";break;
	}
	getch();
	return 0;
}
