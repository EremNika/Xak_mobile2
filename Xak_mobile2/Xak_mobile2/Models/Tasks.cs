using SQLite;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Xak_mobile2 
{
    public class Tasks
    {
        [Key]
        public Guid Id_task { get; set; } = Guid.NewGuid();
        public Guid Id_project { get; set; }
        [DisplayName("Task")]
        public string Task_Name { get; set; }
        public string Description { get; set; } = "No description";
        [DisplayName("Created")]
        public DateTime Date_create { get; set; } = DateTime.Now;
        [DisplayName("Updated")]
        public DateTime? Date_update { get; set; }
        [DisplayName("Canceled")]
        public DateTime? Date_cancel { get; set; }
        [DisplayName("Finished")]
        public DateTime? Date_finish { get; set; }

        public virtual Projects Projects { get; set; }

    }
}
