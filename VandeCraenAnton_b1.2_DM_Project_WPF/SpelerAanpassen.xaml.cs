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
    /// Interaction logic for SpelerAanpassen.xaml
    /// </summary>
    public partial class SpelerAanpassen : Window
    {

        public SpelerAanpassen()
        {
            InitializeComponent();
        }
        


        

        private string Valideer(string columnName)
        {


            if (columnName == "cmbRegios" && cmbRegios.SelectedItem == null)
            {
                return "Selecteer een regio!" + Environment.NewLine;
            }
            if (columnName == "chkBoxRol" && chkDPS.IsChecked == false && chkSupport.IsChecked == false && chkTank.IsChecked == false)
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
            chkDPS.IsChecked = false;
            chkTank.IsChecked = false;
            chkSupport.IsChecked = false;


        }

        private void btnSpelerAanpassen_Click(object sender, RoutedEventArgs e)
        {

            
            
            string foutmeldingen = Valideer("chkboxRol");
            foutmeldingen += Valideer("cmbRegios");

            if (string.IsNullOrEmpty(foutmeldingen))
            {
                Regio regio = cmbRegios.SelectedItem as Regio;
                MainWindow mainWindow = Owner as MainWindow;
                Speler Speler = mainWindow.datagridSpelers.SelectedItem as Speler;
                string status = "";


                if (rbActief.IsChecked == true)
                {
                    status = "Actief";
                }
                else
                {
                    status = "inactief";
                }

                MessageBox.Show(Speler.Regios.id.ToString());
                Speler.voornaam = txtVoornaam.Text;
                Speler.naam = txtAchternaam.Text;
                Speler.bijnaam = txtBijnaam.Text;
                Speler.status = status;
                Speler.Regios.id = regio.id;

                if (Speler.IsGeldig())
                {
                    int ok = DataOperations.AanpassenSpeler(Speler);
                    if (ok > 0)
                    {
                        
                        mainWindow.datagridSpelers.ItemsSource = DataOperations.OphalenSpelers();
                        Wissen();
                    }
                    else
                    {
                        MessageBox.Show("gegevens zijn niet aangepast");
                    }
                }
                else
                {
                    MessageBox.Show(Speler.Error);
                }
            }
            else
            {
                MessageBox.Show(foutmeldingen);
            }

            

        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            cmbRegios.ItemsSource = DataOperations.OphalenRegios();
        }

        private void btnSluiten_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
