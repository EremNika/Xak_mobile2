using System.Collections.Generic;
using SQLite;


namespace Xak_mobile2 
{
    public class UserRepository
    {
        SQLiteConnection database;
        public UserRepository(string databasePath)
        {
            database = new SQLiteConnection(databasePath);
            database.CreateTable<Users>();
        }
        public IEnumerable<Users> GetItems()
        {
            return database.Table<Users>().ToList();
        }
        public Users GetItem(int id)
        {
            return database.Get<Users>(id);
        }
        public int DeleteItem(int id)
        {
            return database.Delete<Users>(id);
        }
        public int SaveItem(Users item)
        {
            if (item.Id_user != 0)
            {
                database.Update(item);
                return item.Id_user;
            }
            else
            {
                return database.Insert(item);
            }
        }
    }
}