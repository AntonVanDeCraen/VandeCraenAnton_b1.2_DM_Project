//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace VandeCraenAnton_b1._2_DM_Project_DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class Speler
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Speler()
        {
            this.Transfer = new HashSet<Transfer>();
            this.Teams = new HashSet<Team>();
        }
    
        public int id { get; set; }
        public string naam { get; set; }
        public string bijnaam { get; set; }
        public int regioID { get; set; }
        public Nullable<System.DateTime> geboortedatum { get; set; }
        public string role { get; set; }
        public string status { get; set; }
        public string voornaam { get; set; }
    
        public virtual Regio Regios { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Transfer> Transfer { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Team> Teams { get; set; }
    }
}
