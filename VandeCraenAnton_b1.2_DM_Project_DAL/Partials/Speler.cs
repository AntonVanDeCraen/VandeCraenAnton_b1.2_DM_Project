using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VandeCraenAnton_b1._2_DM_Project_Model;
namespace VandeCraenAnton_b1._2_DM_Project_DAL
{
    public partial class Speler: BasisKlasse
    {
        public override string this[string columnName]
        {
            get
            {
                if (columnName == "voornaam" && string.IsNullOrWhiteSpace(voornaam))
                {
                    return "Voornaam is een verplicht veld!";
                }
                if (columnName == "naam" && string.IsNullOrWhiteSpace(naam))
                {
                    return "Achternaam is een verplicht veld!";
                }
                if (columnName == "bijnaam" && string.IsNullOrWhiteSpace(bijnaam))
                {
                    return "Bijnaam is een verplicht veld!";
                }
                return "";
            }
        }

        public override string ToString()
        {
            return $"{voornaam} {naam}";
        }


    }
}
