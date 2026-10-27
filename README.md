# Linux System Administration & Bash Automation Suite

[![Bash Scripts CI](https://img.shields.io/badge/CI-GitHub_Actions-blue?logo=githubactions&logoColor=white)](.github/workflows/syntax-check.yml)
[![Shell](https://img.shields.io/badge/Language-Bash_4%2B-green?logo=gnubash&logoColor=white)](https://www.gnu.org/software/bash/)
[![Platform](https://img.shields.io/badge/Platform-Linux_Ubuntu_%2F_Debian-orange?logo=linux&logoColor=white)](https://ubuntu.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

Colección de scripts y utilidades en **Bash** para la automatización, monitorización y administración de sistemas en entornos GNU/Linux. Desarrollado como parte del ciclo formativo de **Sistemas Microinformáticos y Redes (SMR)** y orientado a competencias de **Soporte de Infraestructuras, SysAdmin y Junior DevOps**.

El repositorio reúne soluciones prácticas para la gestión de usuarios, auditoría de cuentas del sistema, validación y empaquetado de ficheros, verificación de resolución DNS y control de flujos de ejecución.

---

## 📂 Estructura del Repositorio

El proyecto se encuentra organizado en módulos temáticos según el área técnica de operación:

```
bash-linux-automation/
├── 01-gestion-usuarios/              # Auditoría, monitorización y altas de cuentas
├── 02-archivos-y-backups/            # Empaquetado, permisos, comprobación y borrado seguro
├── 03-redes-y-seguridad/             # Chequeo DNS de hosts y cifrado de datos con GPG
├── 04-control-de-flujo-y-sistema/    # Bucles, condicionales lógicos, redirecciones y benchmarks
└── .github/workflows/
    └── syntax-check.yml              # Pipeline de CI para validación sintáctica de scripts
```

---

## 🛠️ Catálogo Detallado de Scripts

### 1. Gestión y Auditoría de Usuarios (`01-gestion-usuarios/`)

| Script | Descripción | Comandos / Técnicas Clave |
| :--- | :--- | :--- |
| **`menu_monitor_usuarios.sh`** | Menú interactivo para listar usuarios conectados en tiempo real, mostrar ruta actual y listar inodos de directorios. | `case`, `who`, `cut`, `pwd`, `ls -li` |
| **`auditoria_usuarios_passwd.sh`** | Extracción de nombres y UID de `/etc/passwd`, verificación de conexión de un usuario concreto y búsqueda recursiva en `$HOME`. | `cut -d:`, `who`, `grep -wq`, `find` |
| **`registro_altas_agenda.sh`** | Formulario interactivo en bucle que registra secuencialmente datos de alumnos en un fichero de base de datos (`Datos.txt`). | `while`, `read -p`, `>>` (redirección) |
| **`captura_datos_alumno.sh`** | Captura simultánea y procesamiento de múltiples variables en una sola línea de comandos. | `read` multivariable |

### 2. Archivos, Permisos y Backups (`02-archivos-y-backups/`)

| Script | Descripción | Comandos / Técnicas Clave |
| :--- | :--- | :--- |
| **`comprimir_validando_tamano.sh`** | Validación de paso de 2 parámetros posicionales (`$#`), verificación de existencia (`-f`), comprobación de tamaño no vacío (`-s`) y empaquetado seguro. | `[ $# -eq 2 ]`, `[ -f ]`, `[ -s ]`, compresión |
| **`asignar_permisos_seguros.sh`** | Comprobación de ruta y fichero, y aplicación de permisos octales específicos para el propietario (`chmod 744`). | `read`, `[ -f ]`, `chmod` |
| **`eliminar_archivo_parametro.sh`** | Control estricto de argumentos (`$#`) y eliminación segura del archivo indicado mediante parámetro posicional (`$1`). | `[ $# -eq 1 ]`, `rm $1` |
| **`comprobar_y_crear_archivo.sh`** | Evaluación mediante negación lógica (`! -f`) y creación automática del fichero en caso de no existir. | `[ ! -f ]`, `touch` |
| **`verificar_existencia_archivo.sh`** | Validación interactiva de presencia de un archivo en disco. | `[ -f ]` |
| **`generacion_masiva_archivos.sh`** | Creación automatizada por lotes de ficheros secuenciales (`arch1`..`arch9`) y filtrado por comodín. | `while`, `touch`, *globbing* `arch[0-9]*` |

### 3. Redes y Seguridad (`03-redes-y-seguridad/`)

| Script | Descripción | Comandos / Técnicas Clave |
| :--- | :--- | :--- |
| **`verificador_resolucion_dns.sh`** | Automatización de resolución de nombres DNS recorriendo una lista de servidores externos y mostrando sus direcciones IP. | `for in`, `/usr/bin/host` |
| **`cifrado_directorio_gpg.sh`** | Cifrado interactivo de directorios y datos mediante clave utilizando GnuPG. | `read -p`, `gpg` |

### 4. Control de Flujo y Sistema (`04-control-de-flujo-y-sistema/`)

| Script | Descripción | Comandos / Técnicas Clave |
| :--- | :--- | :--- |
| **`comprobar_directorio_trabajo.sh`** | Verificación de la variable de entorno `$PWD` utilizando el comando `test`. | `if test $PWD` |
| **`comparador_cadenas_logico.sh`** | Comparación lógica de cadenas de texto con operador OR (`-o`) y evaluación de igualdad. | `if [ ... -o ... ]` |
| **`validador_mayoria_edad.sh`** | Validación condicional de valores numéricos con operador relacional mayor o igual (`-ge`). | `if [ $Edad -ge 18 ]` |
| **`redireccion_y_codigo_retorno.sh`** | Redirección de salida y captura del código de estado (`$?`) para confirmar ejecución exitosa. | `>>`, `EXITO=$?` |
| **`bucle_contador_while.sh`** | Contador numérico con evaluación condicional (`-le`) y operaciones aritméticas con `let`. | `while [ -le ]`, `let` |
| **`iterador_letras_for.sh`** | Iteración dinámica sobre listas de elementos proporcionados interactivamente por el usuario. | `for i in $x` |
| **`bucle_estilo_c.sh`** | Bucle `for` con sintaxis tradicional estilo C de inicialización, condición y postincremento. | `for (( c=1; c<=5; c++ ))` |
| **`decremento_while.sh`** | Bucle con decremento aritmético `$(($number-1))` hasta umbral mínimo. | `while [ -gt ]` |
| **`secuencia_dinamica_seq.sh`** | Generación de secuencias numéricas dinámicas con comando `seq` según valor del usuario. | `for i in $(seq 1 $num)` |
| **`contador_por_argumento.sh`** | Contador interactivo que toma el límite superior a través del primer parámetro (`$1`). | `while [ $num -le $1 ]` |
| **`captura_nombre_interactivo.sh`** | Lectura y saludo por consola estándar. | `read -p`, `echo` |
| **`generador_tablas_benchmark.sh`** | Generador de páginas HTML dinámicas con medición precisa del tiempo de ejecución (*benchmark*). | `date +%s`, bucles anidados, cálculo diferencial |

---

## 🚀 Requisitos y Modo de Uso

### Requisitos previos
* Sistema operativo compatible: **Linux (Ubuntu, Debian, Red Hat, Arch)** o **WSL2** en Windows.
* Shell: **Bash 4.0** o superior.
* Paquetes auxiliares recomendados: `bind9-host` (para resolución DNS) y `gnupg` (para cifrado).

### Clonación y permisos de ejecución
Para clonar el repositorio y otorgar permisos de ejecución a todos los scripts:

```bash
# 1. Clonar el repositorio
git clone https://github.com/tu-usuario/bash-linux-automation.git
cd bash-linux-automation

# 2. Asignar permisos de ejecución a todos los scripts
chmod +x **/*.sh

# 3. Ejecutar cualquier script (ejemplo: monitor de usuarios)
./01-gestion-usuarios/menu_monitor_usuarios.sh
```

---

## 🤖 Integración Continua (CI)

El repositorio incluye un flujo automatizado de **GitHub Actions** ([`.github/workflows/syntax-check.yml`](.github/workflows/syntax-check.yml)) que:
1. Se dispara en cada `push` o `pull_request` a las ramas principales.
2. Ejecuta `bash -n` sobre cada fichero `.sh` para verificar que la sintaxis es limpia y libre de fallos antes de su despliegue.

---

## 📄 Licencia

Este proyecto se distribuye bajo la licencia **MIT**. Consulta el archivo [LICENSE](LICENSE) para más detalles.
