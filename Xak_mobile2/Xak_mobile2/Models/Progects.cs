using SQLite;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Text;
using System.Xml.Schema;

namespace Xak_mobile2 
{
    public class Projects
    {
        [Key]
        public Guid Id_project { get; set; } = Guid.NewGuid();
        public Guid Id_user{ get; set; }
        [DisplayName("Project")]
        public string Name { get; set; }
        [DisplayName("Created")]
        public DateTime Date_create { get; set; } = DateTime.Now;
        [DisplayName("Updated")]
        public DateTime Date_update { get; set; } = DateTime.Now;

        public virtual Users Users { get; set; }

    }
}
