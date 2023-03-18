using SQLite;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Xak_mobile2
{
    public class Users
    {
        [Key]
        public Guid Id_user { get; set; } = Guid.NewGuid();
        public string Login { get; set; }
        public string Tag { get; set; } = string.Empty;
        public Guid ActiveProject { get; set; }
        public string Password { get; set; }

    }
}
