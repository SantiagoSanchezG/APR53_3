#include <iostream>
#include <windows.h>

using namespace std;

int main()
{
    cout << "****************Comando ASSOC***************" << endl;
    system("ASSOC");
    cout << "***************Comando ATTRIB***************" << endl;
    system("ATTRIB");
    cout << "***************Comando BREAK****************" << endl;
    system("BREAK");
    cout << "***************Comando BCDEDIT**************" << endl;
    system("BCDEDIT");
    cout << "***************Comando CACLS****************" << endl;
    system("CACLS");
    cout << "***************Comando CALL*****************" << endl;
    system("CALL");
    cout << "***************Comando CD*******************" << endl;
    system("CD");
    cout << "***************Comando CHCP*****************" << endl;
    system("CHCP");
    cout << "***************Comando CHDIR****************" << endl;
    system("CHDIR");
    cout << "***************Comando CHKDSK***************" << endl;
    system("CHKDSK");
    cout << "***************Comando CHKNTFS**************" << endl;
    system("CHKNTFS");
    //Para que sea visibles todos los comandos al finalizar la ejecución no implemento cls ni cmd
    cout << "***************Comando CLS******************" << endl;
    cout << "Borra la pantalla" << endl;
    cout << "***************Comando CMD******************" << endl;
    cout << "Abre una nueva consola de windows" << endl;
    cout << "***************Comando COLOR****************" << endl;
    system("COLOR 0a");
    cout << "***************Comando COMPACT**************" << endl;
    system("COMPACT");
    //El comando CONVERT requiere conocer la letra de una unidad conectada diferente a la actual
    cout << "***************Comando CONVERT**************" << endl;
    cout << "Convierte volúmenes FAT a volúmenes NTFS" << endl;
    cout << "***************Comando DIR******************" << endl;
    system("DIR");
    cout << "***************Comando DRIVERQUERY**********" << endl;
    system("DRIVERQUERY");
    cout << "***************Comando ECHO*****************" << endl;
    system("ECHO");
    //El comando exit sale de la consola de windows
    cout << "***************Comando EXIT*****************" << endl;
    cout << "Sale de la consola de windows (cmd)" << endl;
    cout << "***************Comando FSUTIL***************" << endl;
    system("FSUTIL");
    cout << "***************Comando FTYPE****************" << endl;
    system("FTYPE");
    cout << "***************Comando GPRESULT*************" << endl;
    system("GPRESULT");
    cout << "***************Comando HELP*****************" << endl;
    system("HELP");
    cout << "***************Comando OPENFILES************" << endl;
    system("OPENFILES");
    cout << "***************Comando PATH*****************" << endl;
    system("PATH");
    cout << "***************Comando SET******************" << endl;
    system("SET");
    cout << "***************Comando SC*******************" << endl,
    system("SC");
    //El comando SHUTDOWN apaga el equipo
    cout << "***************Comando SHUTDOWN*************" << endl;
    cout << "Apaga el equipo" << endl;
    cout << "***************Comando SYSTEMINFO***********" << endl;
    system("SYSTEMINFO");
    cout << "***************Comando TASKLIST*************" << endl;
    system("TASKLIST");
    cout << "***************Comando TITLE****************" << endl;
    system("TITLE HELLO JOE ALEXANDER JIMENEZ HERRERA");
    cout << "***************Comando TREE*****************" << endl;
    system("TREE");
    cout << "***************Comando VER******************" << endl;
    system("VER");
    cout << "***************Comando VOL******************" << endl;
    system("VOL");

    return 0;
}
