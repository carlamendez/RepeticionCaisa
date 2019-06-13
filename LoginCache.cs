using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace commons
{
    public static class LoginCache
    {
        public static int idusuario { get; set; }
        public static string  nombre { get; set; }
        public static int edad { get; set; }
        public static string usuario { get; set; }
    }

    public static class datos
    {
        public static int idusuario { get; set; }
        public static string email { get; set; }
        public static string usuario { get; set; }
        public static string contrasena { get; set; }
        public static string confirmarcontrasena { get; set; }
        public static string nombre { get; set; }
        public static string paterno { get; set; }
        public static string materno { get; set; }
        public static DateTime nacimiento { get; set; }
        public static int edad { get; set; }
        public static string direccion { get; set; }
        public static string telefono { get; set; }
    }
}
