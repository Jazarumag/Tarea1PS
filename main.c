#include "headers/datos.h"
#include "headers/sesion.h"
#include <string.h>
int main(){
    int valorIngresado=0;
    int seguir=1;
    char user[50], con[50];
    strcpy(user, pedir_user());
    strcpy(con, pedir_con());
    if (validar(user, con)) {
        bitacora(user, "Ingreso exitoso al sistema");
    } else {
        bitacora(user, "Ingreso fallido usuario/clave erróneo");
        return 0;  // Salimos
    }
    while (seguir){
        mostrar_menu_figuras();
        valorIngresado=pedir_opcion();

        switch (valorIngresado)
        {
        case 1:
            triangulo();
            bitacora(user, "Triángulo");
            break;
        case 2:
            paralelogramo();
            bitacora(user, "Paralelogramo");
            break;
        case 3:
            cuadrado();
            bitacora(user, "Cuadrado");
            break;
        case 4:
            rectangulo();
            bitacora(user, "Rectángulo");
            break;
        case 5:
            rombo();
            bitacora(user, "Rombo");
            break;
        case 6:
            trapecio();
            bitacora(user, "Trapecio");
            break;
        case 7:
            circulo();
            bitacora(user, "Círculo");
            break;
        case 8:
            poligono_regular();
            bitacora(user, "Polígono Regular");
            break;
        case 9:
            cubo();
            bitacora(user, "Cubo");
            break;
        case 10:
            cuboide();
            bitacora(user, "Cuboide");
            break;
        case 11:
            cilindro();
            bitacora(user, "Cilindro");
            break;
        case 12:
            esfera();
            bitacora(user, "Esfera");
            break;
        case 13:
            cono();
            bitacora(user, "Cono");
            break;
        case 14:
            //Salir
            seguir=0;
            bitacora(user, "Salida exitosa");
            break;
        default:
            // Verificar que sea una de las opciones
            repito();
            break;
        }
    }
}
