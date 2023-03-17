using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace Xak_mobile2
{

    [Table("Users")]
    public class Users
    {
        [PrimaryKey, AutoIncrement, Column("_id")]
        public int Id_user { get; set; }
        public string Login { get; set; }
        public string Teg { get; set; }
        public string Password { get; set; }

    }
}
