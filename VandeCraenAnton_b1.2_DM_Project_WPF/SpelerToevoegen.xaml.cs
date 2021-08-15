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
using System.Windows.Shapes;
using VandeCraenAnton_b1._2_DM_Project_DAL;


namespace VandeCraenAnton_b1._2_DM_Project_WPF
{
    /// <summary>
    /// Interaction logic for SpelerToevoegen.xaml
    /// </summary>
    public partial class SpelerToevoegen : Window
    {
        
        
        public SpelerToevoegen()
        {
            InitializeComponent();
        }

        private string Valideer(string columnName)
        {

            
            if (columnName == "cmbTeams" && cmbTeams.SelectedItem == null)
            {
                return "Selecteer een Team!" + Environment.NewLine;
            }
            if (columnName == "cmbRegios" && cmbRegios.SelectedItem == null)
            {
                return "Selecteer een Regio!" + Environment.NewLine;
            }
            if(columnName == "chkBoxRol" && chkDPS.IsChecked == false && chkSupport.IsChecked == false && chkTank.IsChecked == false)
            {
                return "Selecteer een Rol!";
            }
            return "";
        }

        private void Wissen()
        {
            txtBijnaam.Text = "";
            txtVoornaam.Text = "";
            txtAchternaam.Text = "";
            cmbRegios.SelectedIndex = -1;
            cmbTeams.SelectedIndex = -1;
            
            
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            cmbTeams.ItemsSource = DataOperations.OphalenTeams();
            cmbRegios.ItemsSource = DataOperations.OphalenRegios();
        }

        private void btnSpelerToevoegen_Click(object sender, RoutedEventArgs e)
        {
            string foutmelding = Valideer("cmbTeams");
            foutmelding += Valideer("cmbRegios");
            foutmelding += Valideer("chkBoxRol");
            if (string.IsNullOrWhiteSpace(foutmelding))
            {
                Team team = cmbTeams.SelectedItem as Team;
                Regio regio = cmbRegios.SelectedItem as Regio;
                string rol = "";
                string status = "";
                if(chkDPS.IsChecked == true)
                {
                    rol += "DPS";
                }
                if (chkTank.IsChecked == true)
                {
                    rol += "Tank";
                }
                if (chkSupport.IsChecked == true)
                {
                    rol += "Support";
                }
                if(rbActief.IsChecked == true)
                {
                    status = "Actief";
                }
                else
                {
                    status = "inactief";
                }

                Speler speler = new Speler
                {
                    voornaam = txtVoornaam.Text,
                    naam = txtAchternaam.Text,
                    bijnaam = txtBijnaam.Text,
                    role = rol,
                    status = status,
                    regioID = regio.id
                    


                };
               

                if (speler.IsGeldig())
                {
                    int ok = DataOperations.ToevoegenSpeler(speler);
                    if (ok > 0)
                    {
                        
                        MainWindow mainWindow = Owner as MainWindow;
                        mainWindow.datagridSpelers.ItemsSource = DataOperations.OphalenSpelers();
                        
                        Wissen();
                    }
                    else
                    {
                        MessageBox.Show("Speler is niet toegevoegd!");
                    }
                }
                else
                {
                    MessageBox.Show(speler.Error);
                }

            }
            else
            {
                MessageBox.Show(foutmelding);
            }
        }

        private void btnSluiten_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
