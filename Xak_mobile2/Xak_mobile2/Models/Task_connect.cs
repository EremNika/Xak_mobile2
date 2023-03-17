using System.Collections.Generic;
using SQLite;


namespace Xak_mobile2.Models
{
    public class TaskRepository
    {
        SQLiteConnection database;
        public TaskRepository(string databasePath)
        {
            database = new SQLiteConnection(databasePath);
            database.CreateTable<Tasks>();
        }
        public IEnumerable<Tasks> GetItems()
        {
            return database.Table<Tasks>().ToList();
        }
        public Tasks GetItem(int id)
        {
            return database.Get<Tasks>(id);
        }
        public int DeleteItem(int id)
        {
            return database.Delete<Tasks>(id);
        }
        public int SaveItem(Tasks item)
        {
            if (item.Id_task != 0)
            {
                database.Update(item);
                return item.Id_task;
            }
            else
            {
                return database.Insert(item);
            }
        }
    }
}