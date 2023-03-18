using System;
using Xamarin.Forms;

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
            Users friend = new Users();
           FriendPage friendPage = new FriendPage();
            friendPage.BindingContext = friend;
            await Navigation.PushAsync(friendPage);
        }

        private void SaveFriend(object sender, EventArgs e)
        {
            var friend = (Users)BindingContext;
            if (!String.IsNullOrEmpty(friend.Login))
            {
                App.Database.SaveItem(friend);
            }
            this.Navigation.PopAsync();
        }
        private void DeleteFriend(object sender, EventArgs e)
        {
            var friend = (Users)BindingContext;
            App.Database.DeleteItem(friend.Id_user);
            this.Navigation.PopAsync();
        }
        private void Cancel(object sender, EventArgs e)
        {
            this.Navigation.PopAsync();
        }
    }


}

