using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Xak_mobile2.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Profile : TabbedPage
    {
        //Локальный юзер
        public Users user;
        public Guid ID;
        public Profile(Guid id)
        {
            InitializeComponent();
            ID = id;
            User();
        }
        //Вернуть былые значения юзеру
        private void User()
        {
            var query = from users in App.Database.Users where users.Id_user == ID select users;
            Debug.WriteLine(query.FirstOrDefault()?.Login);
            user = query.FirstOrDefault();
        }
        //Кнопка изменить
        private void Edit_info(object sender, EventArgs e)
        {
            App.Database.Users.Update(user);
            App.Database.SaveChanges();
            Debug.WriteLine($"Данные пользователя {user.Login} изменены");
        }
        //Кнопка удалить
        private async void Delete_info(object sender, EventArgs e)
        {
            App.Database.Users.Remove(user);
            App.Database.SaveChanges();
            Debug.WriteLine($"Удалил пользователя: {user.Login}");
            await Navigation.PopAsync();
        }
        //При загрузке окна профиля
        private void ContentPage_Appearing(object sender, EventArgs e)
        {
            User();
            //костыль (юзер)
            List<Users> u = new List<Users>() { user };
            ProfileView.ItemsSource = u;
            //Для надписи "всего проектов"
            var query = from pr in App.Database.Projects where pr.Id_user == user.Id_user select pr;
            ProjectsTotal.Text = $"Всего проектов: {query.Count()}";

            var query2 = from item in query
                         join tasks in App.Database.Tasks on item.Id_project equals tasks.Id_project
                         select tasks;
            //Для надписи "всего задач"
            TasksTotal.Text = $"Задач выполнено: {query2.Where(x => x.Date_finish != null).Count()}/{query2.Count()}";
        }
        //При загрузке окна Проектов
        private void ProjectsTab_Appearing(object sender, EventArgs e)
        {
            var query = from project in App.Database.Projects select project;
            ProjectsView.ItemsSource = query.ToList();
        }
        //При исчезновении окна профиля
        private void ProfileTab_Disappearing(object sender, EventArgs e)
        {
            User();
        }
        //При нажатии на кнопку добавления нового проекта
        private async void AddProjectButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new ProjectPage(new Projects() { Id_user = ID }));
        }
        //при нажатии на кнопку изменения проекта
        private async void EditProjectButton_Clicked(object sender, EventArgs e)
        {
            //костыль для поиска проекта по имени
            var parent = ((Element)sender).Parent as StackLayout;
            var name = parent.Children.First() as Label; //нашёл имя
            var selected = from pr in App.Database.Projects where pr.Name == name.Text select pr;
            await Navigation.PushAsync(new ProjectPage(selected.FirstOrDefault()));
        }
        //Появление окна задач
        private void TasksTab_Appearing(object sender, EventArgs e)
        {
            var query = from tasks in App.Database.Tasks where tasks.Id_project == user.ActiveProject select tasks;
            TasksView.ItemsSource = query.ToList();
        }
        //нажатие кнопки изменения задачи
        private async void EditTaskButton_Clicked(object sender, EventArgs e)
        {
            //костыль для поиска задачи по имени
            var parent = ((Element)sender).Parent as StackLayout;
            var name = parent.Children.First() as Label; //нашёл имя
            var selected = from tasks in App.Database.Tasks where tasks.Task_Name == name.Text select tasks;
            await Navigation.PushAsync(new TaskPage(selected.FirstOrDefault()));
        }
        //нажатие кнопки добавления новой задачи
        private async void AddTaskButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new TaskPage(new Tasks()));
        }
        //Загрузка текущего окна (всего)
        private void ProfilePage_Appearing(object sender, EventArgs e)
        {
            App.u_id = ID;
        }
    }
}