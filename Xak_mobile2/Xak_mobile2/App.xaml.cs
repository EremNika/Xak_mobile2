using System;
using System.IO;
using System.Linq;
using Xak_mobile2.Models;
using Xak_mobile2.Pages;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory;

namespace Xak_mobile2
{
    public partial class App : Application
    {
        public static BaseContext database;
        public static Guid u_id { get; set; } = new Guid();
        public static BaseContext Database
        {
            get
            {
                if (database == null)
                {
                    database = new BaseContext();
                }
                return database;
            }
        }
        public App()
        {
            InitializeComponent();
            MainPage = new NavigationPage(new MainPage());
        }
        protected override void OnStart()
        {
        }
        protected override void OnSleep()
        {
        }
        protected override void OnResume()
        {
        }
    }
}
