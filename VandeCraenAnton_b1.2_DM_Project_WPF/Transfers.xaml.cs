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
    /// Interaction logic for Transfers.xaml
    /// </summary>
    public partial class Transfers : Window
    {
        public Transfers()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            datagridTransfers.ItemsSource = DataOperations.OphalenTransfers();
            cmbSpelers.ItemsSource = DataOperations.OphalenSpelers();
            cmbTeams.ItemsSource = DataOperations.OphalenTeams();
        }

        private void btnToevoegen_Click(object sender, RoutedEventArgs e)
        {

            Speler speler = cmbSpelers.SelectedItem as Speler;
            Team team = cmbTeams.SelectedItem as Team;

            Transfer transfer = new Transfer()
            {
                spelerID = speler.id,
                teamID = team.id,
                datum = DateTime.Now,
                nieuwTeam = team.naam,
                vorigTeam = ""
                
                



            };

            int ok = DataOperations.ToevoegenTransfer(transfer);
            if (ok > 0)
            {

                
                datagridTransfers.ItemsSource = DataOperations.OphalenTransfers();

                
            }
            else
            {
                MessageBox.Show("Transfer is niet toegevoegd!");
            }


        }

        private void btnVerwijderen_Click(object sender, RoutedEventArgs e)
        {

            
            if (datagridTransfers.SelectedItem == null)
            {
                MessageBox.Show("Selecteer een speler!");

                
            }
            else
            {
                Transfer transfer = datagridTransfers.SelectedItem as Transfer;

                int ok = DataOperations.VerwijderenTransfer(transfer);
                if (ok > 0)
                {
                    datagridTransfers.ItemsSource = DataOperations.OphalenTransfers();
                }
                else
                {
                    MessageBox.Show("Transfer is niet verwijderd");

                }
            }




        }

        private void txtZoeken_KeyUp(object sender, KeyEventArgs e)
        {
            datagridTransfers.ItemsSource = DataOperations.OphalenTranferOpBijnaam(txtZoeken.Text);
        }
    }
}
