using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace VandeCraenAnton_b1._2_DM_Project_DAL
{
    public static class DataOperations
    {
        public static List<Regio> OphalenRegios()
        {
            using (LiquipediaEntities liquipediaEntities = new LiquipediaEntities())
            {
                return liquipediaEntities.Regio.ToList();
            }
        }

        public static List<Speler> OphalenSpelers()
        {
            using (LiquipediaEntities liquipediaEntities = new LiquipediaEntities())
            {

                var query = liquipediaEntities.Speler
                    .Include(x => x.Regios);
                return query.ToList();
            }
        }

        public static List<Speler> OphalenSpelersOpGebruikersnaam(string bijnaam)
        {
            using (LiquipediaEntities liquipediaEntities = new LiquipediaEntities())
            {

                var query = liquipediaEntities.Speler
                    .Where(x => x.bijnaam.Contains(bijnaam))
                    .Include(x => x.Regios);
                return query.ToList();
            }
        }

        public static List<Speler> OphalenSpelersOpRegio(Regio regio)
        {
            using (LiquipediaEntities liquipediaEntities = new LiquipediaEntities())
            {

                var query = liquipediaEntities.Speler
                    .Where(x => x.regioID == regio.id)
                    .Include(x => x.Regios);
                return query.ToList();
            }
        }

        public static int VerwijderenSpeler(Speler speler)
        {
            try
            {
                using (LiquipediaEntities entities = new LiquipediaEntities())
                {
                    entities.Entry(speler).State = EntityState.Deleted;
                    return entities.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                FileOperations.FoutLoggen(ex);
                return 0;
            }
        }

        public static int ToevoegenSpeler(Speler speler)
        {
            try
            {
                using (LiquipediaEntities publishersEntities = new LiquipediaEntities())
                {

                    publishersEntities.Speler.Add(speler);
                    return publishersEntities.SaveChanges();

                }
            }
            catch (Exception ex)
            {
                FileOperations.FoutLoggen(ex);
                return 0;
            }
        }

        public static int AanpassenSpeler(Speler speler)
        {
            using (LiquipediaEntities entities = new LiquipediaEntities())
            {
                entities.Entry(speler).State = EntityState.Modified;
                return entities.SaveChanges();
            }
        }

        

        public static List<Team> OphalenTeams()
        {
            using (LiquipediaEntities liquipediaEntities = new LiquipediaEntities())
            {
                return liquipediaEntities.Team.ToList();
            }
        }

       

        public static List<Transfer> OphalenTransfers()
        {
            using (LiquipediaEntities liquipediaEntities = new LiquipediaEntities())
            {

                var query = liquipediaEntities.Transfer
                    
                    .Include(x => x.Team)
                    .Include(x => x.Speler)
                    ;
                return query.ToList();
            }
        }


        public static List<Transfer> OphalenTranferOpBijnaam(string bijnaam)
        {
            using (LiquipediaEntities liquipediaEntities = new LiquipediaEntities())
            {

                var query = liquipediaEntities.Transfer
                    .Where(x => x.Speler.bijnaam.Contains(bijnaam));
                    
                return query.ToList();
            }
        }

        public static int ToevoegenTransfer(Transfer transfer)
        {
            try
            {
                using (LiquipediaEntities publishersEntities = new LiquipediaEntities())
                {

                    publishersEntities.Transfer.Add(transfer);
                    return publishersEntities.SaveChanges();

                }
            }
            catch (Exception ex)
            {
                FileOperations.FoutLoggen(ex);
                return 0;
            }
        }

        public static int VerwijderenTransfer(Transfer transfer)
        {
            try
            {
                using (LiquipediaEntities entities = new LiquipediaEntities())
                {
                    entities.Entry(transfer).State = EntityState.Deleted;
                    return entities.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                FileOperations.FoutLoggen(ex);
                return 0;
            }
        }

    }




}
