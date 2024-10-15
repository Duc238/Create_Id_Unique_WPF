using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Create_Id_Unique.Model
{
    public class DataProvider
    {
        private static DataProvider _Instance;
        public static DataProvider Instance { get { if (_Instance == null) _Instance = new DataProvider();return _Instance; } set { _Instance = value; } }
        public CreateIdUniqueEntities Data { get; set; }
        private DataProvider()
        {
            Data=new CreateIdUniqueEntities();
        }
    }
}
