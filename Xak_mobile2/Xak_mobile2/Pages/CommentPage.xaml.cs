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
    public partial class CommentPage : ContentPage
    {
        public Comments Comment { get; set; }
        public CommentPage(Comments com)
        {
            InitializeComponent();
            Comment = com;
        }

        private void ContentPage_Appearing(object sender, EventArgs e)
        {
            List<Comments> comments = new List<Comments>
            {
                Comment
            };
            CommentView.ItemsSource = comments;
        }

        private async void EditButton_Clicked(object sender, EventArgs e)
        {
            var query = from comments in App.Database.Comments where comments.Id_comment == Comment.Id_comment select comments;
            if (query.FirstOrDefault() == null)
            {
                App.Database.Comments.Add(Comment);
            }
            else
            {
                App.Database.Comments.Update(Comment);
            }
            App.Database.SaveChanges();
            await Navigation.PopAsync();
        }

        private async void DeleteButton_Clicked(object sender, EventArgs e)
        {
            App.Database.Comments.Remove(Comment);
            App.Database.SaveChanges(); 
            await Navigation.PopAsync();
        }
    }
}