using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace Xak_mobile2 
{
    [Table("Comments")]
    public class Comments
    {
        [PrimaryKey, AutoIncrement, Column("_id")]
        public int Id_comment { get; set; }
        public int Id_task { get; set; }
        public string Content { get; set; }
        public string Type_comment { get; set; }

        public virtual Tasks Tasks { get; set; }

    }
}
