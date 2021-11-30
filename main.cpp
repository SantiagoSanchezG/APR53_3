//Pide al usaurio los datos para llenar dos matrices simetricas.
//Las suma y por ultimo crear su transpuesta

#include <iostream>
#include <conio.h>

using namespace std;

int main(int col){
    cout << "Ingrese el n"<<char(163)<<"mero de filas y columnas: "; cin>>col;
    int m[col][col];
    for(int i = 0; i < col; i++){
        for(int j = 0; j < col; j++){
            cout<<"Ingrese el valor para la posici"<<char(162)<<"n ["<<i<<"]["<<j<<"] de la matriz 1: "; cin>>m[i][j];
        }
    }
    int m2[col][col];
    for(int i = 0; i < col; i++){
        for(int j = 0; j < col; j++){
            cout<<"Ingrese el valor para la posici"<<char(162)<<"n ["<<i<<"]["<<j<<"] de la matriz 2: "; cin>>m2[i][j];
        }
    }
    cout<<endl<<"MATRICES ORIGINALES"<<endl;
    for(int i = 0; i < col; i++){
        for(int j = 0; j < col; j++){
            cout<<"["<<m[i][j]<<"]";
        }
        cout<<endl;
    }
    cout<<endl;
    for(int i = 0; i < col; i++){
        for(int j = 0; j < col; j++){
            cout<<"["<<m2[i][j]<<"]";
        }
        cout<<endl;
    }
    cout<<endl<<"MATRIZ SUMADA"<<endl;
    for(int i = 0; i < col; i++){
        for(int j = 0; j < col; j++){
            m[i][j] += m2[i][j];
        }
    }
    for(int i = 0; i < col; i++){
        for(int j = 0; j < col; j++){
            cout<<"["<<m[i][j]<<"]";
        }
        cout<<endl;
    }
    cout<<endl<<"MATRIZ TRASPUESTA"<<endl;
    for(int i = 0; i < col; i++){
        for(int j = 0; j < col; j++){
            m2[j][i] = m[i][j];
        }
    }
    for(int i = 0; i < col; i++){
        for(int j = 0; j < col; j++){
            cout<<"["<<m2[i][j]<<"]";
        }
        cout<<endl;
    }
    getch();
    return 0;
}
