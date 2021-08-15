using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using VandeCraenAnton_b1._2_DM_Project_DAL;

namespace VandeCraenAnton_b1._2_DM_Project_WPF
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            
            foreach (Regio regio in DataOperations.OphalenRegios()){
                Button button = new Button
                {
                    
                    Content = regio.naam,
                    Background = new SolidColorBrush(Color.FromArgb(0xff, 0xb1, 0x2a, 0x2a)),
                    BorderBrush = new SolidColorBrush(Color.FromRgb(255,255,255))
                    
                };

                button.Click += btn_Click;
                void btn_Click(object s, RoutedEventArgs btnevent)
                {
                    datagridSpelers.ItemsSource = DataOperations.OphalenSpelersOpRegio(regio);
                }

                RegionButtons.Children.Add(button);
            }

            datagridSpelers.ItemsSource = DataOperations.OphalenSpelers();
            
            
        }

        

        private void txtZoeken_KeyUp(object sender, KeyEventArgs e)
        {
            datagridSpelers.ItemsSource = DataOperations.OphalenSpelersOpGebruikersnaam(txtZoeken.Text);
        }

        

        private void btnToevoegen_Click(object sender, RoutedEventArgs e)
        {
            SpelerToevoegen s = new SpelerToevoegen();
            s.Owner = this;
            s.ShowDialog();
        }

        private void btnAanpassen_Click(object sender, RoutedEventArgs e)
        {
            string foutmeldingen = Valideer("Speler");
            if (string.IsNullOrWhiteSpace(foutmeldingen))
            {
                
                SpelerAanpassen s = new SpelerAanpassen();
                s.Owner = this;
                s.Show();
            }
            else
            {
                MessageBox.Show("selecteer een speler!");
            }
            
        }

        private void btnVerwijderen_Click(object sender, RoutedEventArgs e)
        {

            string foutmeldingen = Valideer("Speler");
            if(string.IsNullOrWhiteSpace(foutmeldingen))
            {
                Speler speler = datagridSpelers.SelectedItem as Speler;

                int ok = DataOperations.VerwijderenSpeler(speler);
                if (ok > 0)
                {
                    datagridSpelers.ItemsSource = DataOperations.OphalenSpelers();
                }
                else
                {
                    MessageBox.Show("speler is niet verwijderd");
                    
                }
            }
            else
            {
                MessageBox.Show(foutmeldingen);
            }

            

            
        }


        private string Valideer(string columnName)
        {
            
            if (columnName == "Speler" && datagridSpelers.SelectedItem == null)
            {
                return "Selecteer een Speler!" + Environment.NewLine;
            }
            
            return "";
        }

        private void btnTransfers_Click(object sender, RoutedEventArgs e)
        {
            Transfers t = new Transfers();
            t.ShowDialog();
        }

        private void btnSluiten_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
    }
}
