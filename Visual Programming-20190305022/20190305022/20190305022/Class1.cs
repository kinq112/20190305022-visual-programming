using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _20190305022
{
    internal class Class1
    {
        public class Inheritance
        {
            public Inheritance()
            { }
            public Inheritance(string Admin, string Gender, string Locations,  string Passangers )
            {
                
                this.Gender = Gender;
                this.Locations = Locations;
                this.Passangers = Passangers;
                this.Admin = Admin;
               
                


            }
            public string Gender { get; set; }
            public string Locations { get; set; }
            public string Passangers { get; set;  }
            public string Admin { get; }
        }


    }
}

