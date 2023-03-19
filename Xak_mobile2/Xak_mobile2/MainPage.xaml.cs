using System;
using Xak_mobile2.Models;
using Xamarin.Forms;
using System.Linq;
using Xak_mobile2.Pages;
using System.Diagnostics;

namespace Xak_mobile2
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
        }
        protected override void OnAppearing()
        {
            //friendsList.ItemsSource = App.Database.GetItems();
          
       
            base.OnAppearing();
        }
        // обработка нажатия элемента в списке
        //private async void OnItemSelected(object sender, SelectedItemChangedEventArgs e)
        //{
        //    Users selectedFriend = (Users)e.SelectedItem;
        //    FriendPage friendPage = new FriendPage();
        //    friendPage.BindingContext = selectedFriend;
        //    await Navigation.PushAsync(friendPage);
        //}
        // обработка нажатия кнопки добавления
        private async void CreateFriend(object sender, EventArgs e)
        {
            Users friend = new Users()
            {
                Login = LoginText.Text,
                Password = PassText.Text,
            };
            var query = from user in App.Database.Users where user.Login == friend.Login select user;
            if(query.FirstOrDefault() != null)
            {
                Auth(friend);
            }
            else
            {
                App.Database.Users.Add(friend);
                App.Database.SaveChanges();
                Profile friendPage = new Profile(friend.Id_user);
                await Navigation.PushAsync(friendPage);
            }
        }
        private async void Auth(Users user)
        {
            var query = from check in App.Database.Users where check.Login == user.Login select check.Id_user;
            App.u_id = query.FirstOrDefault();
            Profile friendPage = new Profile(App.u_id);
            await Navigation.PushAsync(friendPage);
            //if (query?.FirstOrDefault() == true)
            //{
            //    Profile friendPage = new Profile(user.Id_user);
            //    await Navigation.PushAsync(friendPage);
            //}
            //else
            //{
            //    //если пароль неправильный
            //    Debug.WriteLine("Pass is ot correct");
            //}

        }
        private void Cancel(object sender, EventArgs e)
        {
            this.Navigation.PopAsync();
        }
    }


}

