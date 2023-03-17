using System.Collections.Generic;
using SQLite;

namespace Xak_mobile2.Models
{
    public class ProjectRepository
    {
        SQLiteConnection database;
        public ProjectRepository(string databasePath)
        {
            database = new SQLiteConnection(databasePath);
            database.CreateTable<Projects>();
        }
        public IEnumerable<Projects> GetItems()
        {
            return database.Table<Projects>().ToList();
        }
        public Projects GetItem(int id)
        {
            return database.Get<Projects>(id);
        }
        public int DeleteItem(int id)
        {
            return database.Delete<Projects>(id);
        }
        public int SaveItem(Projects item)
        {
            if (item.Id_project != 0)
            {
                database.Update(item);
                return item.Id_project;
            }
            else
            {
                return database.Insert(item);
            }
        }
    }
}
