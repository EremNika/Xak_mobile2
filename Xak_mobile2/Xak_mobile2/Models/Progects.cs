using SQLite;
using System;
using System.Collections.Generic;
using System.Text;
using System.Xml.Schema;

namespace Xak_mobile2.Models
{
    [Table("Projects")]
    public class Projects
    {
        [PrimaryKey, AutoIncrement, Column("_id")]
        public int Id_project { get; set; }
        public int Id_user{ get; set; }
        public string Name { get; set; }
        public DateTime  Date_create { get; set; }
        public DateTime Date_update { get; set; }

        public virtual Users Users { get; set; }

    }
}
