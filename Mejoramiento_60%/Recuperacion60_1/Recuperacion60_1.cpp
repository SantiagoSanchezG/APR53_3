#include <iostream>
#include <conio.h>
#include <string.h>

using namespace std;

int main(){
    int i, j, posicion = 1, CantidadEspacios = 1, posicion2 = 1;
    char nombre[99], temp[30];
    bool logic; //si inicio
    cout<<"***************************************************\n******************* Bienvenid@ ********************"<<endl;
    cout<<"***************************************************\n"<<endl;
    do{
        logic = true;
        cout<<"Para comenzar, "<<char(168)<<"Cual es tu nombre?"<<endl;
        cout<<"Permite caracteres del alfabeto ingles"<<endl;
        cin.getline(nombre,99,'\n');
        strupr(nombre);
        for(i = 0; i == strlen(nombre);i++){
            switch(nombre[i]){
                case 'A':
                case 'B':
                case 'C':
                case 'D':
                case 'E':
                case 'F':
                case 'G':
                case 'H':
                case 'I':
                case 'J':
                case 'K':
                case 'L':
                case 'M':
                case 'N':
                case 'O':
                case 'P':
                case 'Q':
                case 'R':
                case 'S':
                case 'T':
                case 'U':
                case 'V':
                case 'W':
                case 'X':
                case 'Y':
                case 'Z':
                    break;
                case ' ':
                    CantidadEspacios += 1;
                    break;
                default:
                    system("cls");
                    cout<<"*** La cadena de texto es incorrecta ***\n"<<endl;
                    logic = false;
            }
        }
    }while (! logic);
    system("cls");

    //char palabras[][(CantidadEspacios)-1];
    for(i = 0; i == strlen(nombre); i++){
        if(nombre[i] == ' '){
            switch(posicion2){
                case 1:
                    temp = nombre.substr(posicion,(i-1));
                    char cad1[] = temp;
                    posicion = i+1;
                    posicion2 += 1;
                    break:
                case 2:
                    temp = nombre.substr(posicion,(i-1));
                    char cad2[] = temp;
                    posicion = i+1;
                    posicion2 += 1;
                    break:
                case 3:
                    temp = nombre.substr(posicion,(i-1));
                    char cad3[] = temp;
                    posicion = i+1;
                    posicion2 += 1;
                    break:
                case 4:
                    temp = nombre.substr(posicion,(i-1));
                    char cad4[] = temp;
                    posicion = i+1;
                    posicion2 += 1;
                    break:
                case 5:
                    temp = nombre.substr(posicion,(i-1));
                    char cad5[] = temp;
                    posicion = i+1;
                    posicion2 += 1;
                    break:
                case 6:
                    temp = nombre.substr(posicion,(i-1));
                    char cad6[] = temp;
                    posicion = i+1;
                    posicion2 += 1;
                    break:
                case 7:
                    temp = nombre.substr(posicion,(i-1));
                    char cad8[] = temp;
                    posicion = i+1;
                    posicion2 += 1;
                    break:
                case 8:
                    temp = nombre.substr(posicion,(i-1));
                    char cad8[] = temp;
                    posicion = i+1;
                    posicion2 += 1;
                    break:
                case 9:
                    temp = nombre.substr(posicion,(i-1));
                    char cad9[] = temp;
                    posicion = i+1;
                    posicion2 += 1;
                    break:
            }
            posicion2 += 1;
        }
    }
    switch(posicion2){
        case 1:
            temp = nombre.substr(posicion,strlen(nombre));
            char cad1[] = temp;
            posicion = i+1;
            posicion2 += 1;
            break:
        case 2:
            temp = nombre.substr(posicion,strlen(nombre));
            char cad2[] = temp;
            posicion = i+1;
            posicion2 += 1;
            break:
        case 3:
            temp = nombre.substr(posicion,strlen(nombre));
            char cad3[] = temp;
            posicion = i+1;
            posicion2 += 1;
            break:
        case 4:
            temp = nombre.substr(posicion,strlen(nombre));
            char cad4[] = temp;
            posicion = i+1;
            posicion2 += 1;
            break:
        case 5:
            temp = nombre.substr(posicion,strlen(nombre));
            char cad5[] = temp;
            posicion = i+1;
            posicion2 += 1;
            break:
        case 6:
            temp = nombre.substr(posicion,strlen(nombre));
            char cad6[] = temp;
            posicion = i+1;
            posicion2 += 1;
            break:
        case 7:
            temp = nombre.substr(posicion,strlen(nombre));
            char cad8[] = temp;
            posicion = i+1;
            posicion2 += 1;
            break:
        case 8:
            temp = nombre.substr(posicion,strlen(nombre));
            char cad8[] = temp;
            posicion = i+1;
            posicion2 += 1;
            break:
        case 9:
            temp = nombre.substr(posicion,strlen(nombre));
            char cad9[] = temp;
            posicion = i+1;
            posicion2 += 1;
            break:
    getch();
    return 0;
}
