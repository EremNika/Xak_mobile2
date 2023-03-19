using Microsoft.EntityFrameworkCore.Internal;
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
    public partial class TaskPage : ContentPage
    {
        //Локальная задача
        public Tasks Task { get; set; } 
        public TaskPage(Tasks task)
        {
            InitializeComponent();
            Task = task;
        }
        //Что происходит при загрузке странички
        private void ContentPage_Appearing(object sender, EventArgs e)
        {
            List<Tasks> list = new List<Tasks>() { Task };
            //Это костыль, но он очень удобный. Через Binding значения сразу пишутся в локальную задачу, к тому же, интерфейс выстраивается сам.
            TaskView.ItemsSource = list;
            var query = from task in App.Database.Tasks where task.Id_task == Task.Id_task select task;
            //Логика, чтобы понять, включены переключатели возле "задача отменена, задача выполнена"
            if(query.FirstOrDefault() != null)
            {
                if(Task.Date_cancel != null)
                {
                    CanceledBox.IsToggled = true;
                }
                if(Task.Date_finish != null)
                {
                    FinishedBox.IsToggled = true;
                }
            }
        }
        //Что происходит при нажатии кнопки "изменить"
        private async void EditButton_Clicked(object sender, EventArgs e)
        {
            //Сразу меняется дата обновлния, так что не важно, создаётся новая задача или обновляется старая
            Task.Date_update = DateTime.Now;
            //Узнать айди проекта
            var projId = from user in App.Database.Users where user.Id_user == App.u_id select user.ActiveProject;
            Task.Id_project = projId.FirstOrDefault();
            //Понять, эта задача уже есть в базе данных?
            var query = App.Database.Tasks.Find(Task.Id_task);
            if (query == null) //нету
            {
                App.Database.Tasks.Add(Task); //добавляем новую
            }
            else //есть
            {
                App.Database.Tasks.Update(Task); //обновляем старую
            }
            App.Database.SaveChanges();
            await Navigation.PopAsync(); //возвращаемся
        }
        //Что происходит при нажатии кнопки "Удалить"
        private async void DeleteButton_Clicked(object sender, EventArgs e)
        {
            var query = App.Database.Tasks.Find(Task.Id_task);
            if (query != null)
            {
                App.Database.Remove(Task);
                App.Database.SaveChanges();
            }
            await Navigation.PopAsync(); //возвращаемся
        }
        //Что происходит при переключении переключаталя "Отменена"
        private void CanceledBox_Toggled(object sender, ToggledEventArgs e)
        {
            if(CanceledBox.IsToggled) //включён
            {
                Task.Date_cancel = DateTime.Now; //записываем сегодняшнюю дату
            }
            else //выключен
            {
                Task.Date_cancel = null; //значит, даты нет
            }
        }
        //Что происходит при переключении переключаталя "Выполнено"
        private void FinishedBox_Toggled(object sender, ToggledEventArgs e)
        {
            if (FinishedBox.IsToggled) //включён
            {
                Task.Date_finish = DateTime.Now; //записываем сегодняшнюю дату
            }
            else //выключен
            {
                Task.Date_finish = null; //значит, даты нет
            }

        }

        private async void CommentsButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new CommentsPage(Task)); //открыть комментарии
        }
    }
}