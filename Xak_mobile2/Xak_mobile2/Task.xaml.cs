using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Xak_mobile2
{

    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Tasks : ContentPage
    {
        public Tasks()
        {
            InitializeComponent();

            string[] task = new string[] { "Task 1", "Task 2", "Task 3" };
            taskList.ItemsSource = task;
        }
        private void taskList_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem != null)
                selected.Text = e.SelectedItem.ToString();
        }

        private void ToolbarItem_Clicked(object sender, EventArgs e)
        {

        }
    }
    }
