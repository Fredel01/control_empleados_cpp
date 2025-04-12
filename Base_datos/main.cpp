#include "MySQLConexion.h"
#include "EloquentORM.h"
#include <iostream>
#include <vector>
#include <string>

using namespace std;

int main() {
    // Crear la conexión a la base de datos
    MySQLConexion conn("root", "2020", "control_horario");

    // Verificar si la conexión fue exitosa
    if (!conn.open()) {
        cerr << "No se pudo conectar a la base de datos." << endl;
        return 1;
    }

    // Definir las columnas que se quieren obtener de la tabla 'personas'
    vector<string> columnas = { "nombre", "edad", "genero" };

    // Crear una instancia del ORM para la tabla 'personas'
    EloquentORM personas(conn, "personas", columnas);

    // Obtener todos los registros
    auto lista = personas.getAll();

    // Mostrar los registros en consola
    for (auto& reg : lista) {
        cout << "ID: " << reg["id"]
             << ", Nombre: " << reg["nombre"]
             << ", Edad: " << reg["edad"]
             << ", Género: " << reg["genero"] << endl;
    }
    return 0;
}
