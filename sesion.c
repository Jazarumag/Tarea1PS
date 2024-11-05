#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>
int validar(char *usuario, char *clave) {
    FILE *archivo = fopen("usuarios.txt", "r");
    char linea[100];
    char usuario_arch[50], clave_arch[50];
    int acceso_exitoso = 0;

    while (fgets(linea, sizeof(linea), archivo)) {
        sscanf(linea, "%s %s", usuario_arch, clave_arch);
        if (strcmp(usuario, usuario_arch) == 0 && strcmp(clave, clave_arch) == 0) {
            acceso_exitoso = 1;
            printf("Bienvenido %s", usuario);
            break;
        }
    }
    fclose(archivo);
    return acceso_exitoso;
}

void bitacora(char *usuario, char *accion) {
    FILE *bitacora = fopen("bitacora.txt", "a");
    time_t ahora = time(NULL);
    struct tm *tiempo = localtime(&ahora);
    char fecha[20];

    strftime(fecha, sizeof(fecha), "%Y/%m/%d", tiempo);
    fprintf(bitacora, "%s: %s - %s\n", fecha, usuario, accion);
    fclose(bitacora);
}