using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore.Migrations.Internal;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Xak_mobile2.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ProjectPage : ContentPage
    {
        //локальный проект
        public Projects Project { get; set; }
        public ProjectPage(Projects project)
        {
            InitializeComponent();
            Project = project;
        }
        //Что происходит при нажатии кнопки "изменить"
        private async void EditButton_Clicked(object sender, EventArgs e)
        {
            Project.Date_update = DateTime.Now;
            var query = App.Database.Projects.Find(Project.Id_project);
            if (query == null)
            {
                App.Database.Projects.Add(Project);
            }
            else
            {
                App.Database.Projects.Update(Project);
            }
            App.Database.SaveChanges();
            await Navigation.PopAsync();
        }
        //Что происходит при загрузке странички
        private void ContentPage_Appearing(object sender, EventArgs e)
        {
            //Костыль
            List<Projects> list = new List<Projects>() { Project };
            ProjectView.ItemsSource = list;
            //Логика, чтобы понять, включены переключатели возле "Активна"
            var user = App.Database.Users.Find(App.u_id);
            ActiveBox.IsToggled = user.ActiveProject != null && (user.ActiveProject == Project.Id_project);
        }
        //Что происходит при нажатии кнопки "Удалить"
        private async void DeleteButton_Clicked(object sender, EventArgs e)
        {
            var query = App.Database.Projects.Find(Project.Id_project);
            if (query == null)
            {
                App.Database.Projects.Remove(Project);
                App.Database.SaveChanges();
            }
            await Navigation.PopAsync();


        }
        //Переключение активности
        private void ActiveBox_Toggled(object sender, ToggledEventArgs e)
        {
            if(ActiveBox.IsToggled)
            {
                var query2 = from users in App.Database.Users where users.Id_user == App.u_id select users; //у пользователя есть ровно 1 активный проект
                var user = query2.FirstOrDefault();
                user.ActiveProject = Project.Id_project; //поставили, если переключатель включён
                App.Database.Users.Update(user);
            }
        }
    }
}