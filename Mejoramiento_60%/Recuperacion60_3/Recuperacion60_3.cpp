// Cajero Automatico
//
// Diseño de un cajero electrónico con todas las funcionalidades del caso
//
// Realizado por: Santiago Sánchez Grisales
//         Email: santiagosanchez309942@correo.itm.edu.co
// Versión 1.0, octubre del 2021

#include <iostream>

using namespace std;

void espa(int); // Funcion para dar estetica

int main(){
	int opc = 0;
	float sett,saldo = 100000;

	//Bienvenida y captura opcion menu
    cout<<"*************************************************"<<endl; espa(1);
    cout<<"*\tBienvenido a su cajero automatico\t*"<<endl; espa(1);
    cout<<"*    1. Ingresar dinero en cuenta\t\t*"<<endl;
    cout<<"*    2. Retirar dinero de la cuenta\t\t*"<<endl;
    cout<<"*    3. Consultar Saldo\t\t\t\t*"<<endl;
    cout<<"*    4. Salir\t\t\t\t\t*"<<endl;espa(1);
    cout<<"*************************************************"<<endl;
    cout<<"Opcion: "; cin>>opc;
    system("cls");

	switch(opc){
	    //Para ingresar dinero en la cuenta
		case 1: cout<<"*************************************************"<<endl; espa(1);
                cout<<"*\tINGRESAR DINERO EN CUENTA\t\t*"<<endl; espa(2);
                cout<<"*     Saldo actual: $"<<saldo<<"\t\t\t*"<<endl; espa(3);
                cout<<"*************************************************"<<endl;
                cout<<"\nDigite el monto a cargar: ";
				cin>>sett;
				saldo += sett;
				system("cls");
				cout<<"*************************************************"<<endl; espa(1);
                cout<<"*\tINGRESAR DINERO EN CUENTA\t\t*"<<endl; espa(2);
                cout<<"*     Saldo actual: $"<<saldo<<"\t\t\t*"<<endl; espa(3);
                cout<<"*************************************************"<<endl;
                break;
        //Para retirar dinero de la cuenta
		case 2: cout<<"*************************************************"<<endl; espa(1);
                cout<<"*\tRETIRAR DINERO DE LA CUENTA\t\t*"<<endl; espa(2);
                cout<<"*     Saldo actual: $"<<saldo<<"\t\t\t*"<<endl; espa(3);
                cout<<"*************************************************"<<endl;
                cout<<"\nDigite el monto a retirar: ";
				cin>>sett;
				system("cls");
				if(saldo >= sett){
                    saldo -= sett;
                    cout<<"*************************************************"<<endl; espa(1);
                    cout<<"*\tRETIRAR DINERO DE LA CUENTA\t\t*"<<endl; espa(2);
                    cout<<"*     Saldo actual: $"<<saldo<<"\t\t\t*"<<endl; espa(3);
                    cout<<"*************************************************"<<endl;
				}else{
				    cout<<"*************************************************"<<endl; espa(1);
                    cout<<"*\tRETIRAR DINERO DE LA CUENTA\t\t*"<<endl; espa(1);
                    cout<<"*\t     Saldo insuficiente\t\t\t*"<<endl; espa(2);
                    cout<<"*     Saldo actual: $"<<saldo<<"\t\t\t*"<<endl; espa(1);
                    cout<<"*************************************************"<<endl;
				}
                break;
        //Para consultar saldo
		case 3: cout<<"*************************************************"<<endl; espa(1);
                cout<<"*\t\tCONSULTAR SALDO\t\t\t*"<<endl; espa(2);
                cout<<"*     Saldo actual: $"<<saldo<<"\t\t\t*"<<endl; espa(3);
                cout<<"*************************************************"<<endl;
                break;
        //Mensaje de salida
        case 4: cout<<"*************************************************"<<endl; espa(2);
                cout<<"*\tAdios, gracias por preferirnos\t\t*"<<endl; espa(4);
                cout<<"*************************************************"<<endl;
                break;
        //En caso de opcion no valida
		default: cout<<"*************************************************"<<endl; espa(2);
                 cout<<"*\t\tOpcion no valida\t\t*"<<endl; espa(4);
                 cout<<"*************************************************"<<endl;
                 break;
	}

	return 0;
}

//Funcion para dar bordes esteticos
void espa(int n){
    for(int i = 0; i < n; i++){
        cout<<"*\t\t\t\t\t\t*"<<endl;
    }
}
