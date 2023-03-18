using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Xak_mobile2.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CommentsPage : ContentPage
    {
        //Локальная задача
        public Tasks Task { get; set; }
        public CommentsPage(Tasks task)
        {
            InitializeComponent();
            Task = task;
        }
        //При загрузке окна
        private void ContentPage_Appearing(object sender, EventArgs e)
        {
            var query = from comments in App.Database.Comments where comments.Id_task == Task.Id_task select comments;
            CommentsView.ItemsSource = query.ToList();
        }
        //Кнопка изменить
        private async void EditCommentButton_Clicked(object sender, EventArgs e)
        {
            var button = sender as Button;
            var parent = button.Parent as StackLayout;
            var label = parent.Children.First() as Label;
            var guid = Guid.Parse(label.Text);
            var selected = from comment in App.Database.Comments where comment.Id_comment == guid select comment;
            await Navigation.PushAsync(new CommentPage(selected.FirstOrDefault()));
        }
        //Кнопка добавить
        private async void AddCommentButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new CommentPage(new Comments() { Id_task = Task.Id_task }));
        }
    }
}