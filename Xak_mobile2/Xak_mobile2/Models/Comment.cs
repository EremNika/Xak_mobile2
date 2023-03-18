using SQLite;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Xak_mobile2 
{
    public class Comments
    {
        [Key]
        public Guid Id_comment { get; set; } = Guid.NewGuid();
        public Guid Id_task { get; set; }
        public string Content { get; set; }
        //[DisplayName("Type")]
        public string Type_comment { get; set; }

        public virtual Tasks Tasks { get; set; }

    }
}
