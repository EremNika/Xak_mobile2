using System.Collections.Generic;
using SQLite;

namespace Xak_mobile2.Models
{
    public class CommentsRepository
    {
        SQLiteConnection database;
        public CommentsRepository(string databasePath)
        {
            database = new SQLiteConnection(databasePath);
            database.CreateTable<Comments>();
        }
        public IEnumerable<Comments> GetItems()
        {
            return database.Table<Comments>().ToList();
        }
        public Comments GetItem(int id)
        {
            return database.Get<Comments>(id);
        }
        public int DeleteItem(int id)
        {
            return database.Delete<Comments>(id);
        }
        public int SaveItem(Comments item)
        {
            if (item.Id_comment != 0)
            {
                database.Update(item);
                return item.Id_comment;
            }
            else
            {
                return database.Insert(item);
            }
        }
    }
}