using System;
using Xamarin.Forms;

namespace Xak_mobile2
{
    public partial class MainPage : MasterDetailPage
    {
        public MainPage()
        {


            InitializeComponent();
            //Detail = new NavigationPage(new Page());            

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

        private void Button2_Clicked(object sender, EventArgs e)
        {
            Detail = new NavigationPage(new Dashboard());
        }

        private void Button_Clicked_1(object sender, EventArgs e)
        {
            Detail = new NavigationPage(new Progects());
        }

        private void Button_Clicked_2(object sender, EventArgs e)
        {
            Detail = new NavigationPage(new Tasks());
        }


    }
}




