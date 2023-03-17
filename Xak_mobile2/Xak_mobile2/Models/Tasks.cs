using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace Xak_mobile2.Models
{
    [Table("Tasks")]
    public class Tasks
    {
        [PrimaryKey, AutoIncrement, Column("_id")]
        public int Id_task { get; set; }
        public int Id_project { get; set; }
        public string Name { get; set; }
        public string Discription { get; set; }
        public DateTime Date_create { get; set; }
        public DateTime Date_update { get; set; }
        public DateTime Date_cancel { get; set; }
        public DateTime Date_finish { get; set; }

        public virtual Projects Projects { get; set; }

    }
}
