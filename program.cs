using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// Libraries for database access
using System.Data;
using System.Data.SqlClient;

namespace DataBaseTest
{
    internal class Program
    {
        static void Main(string[] args)

        // TEST ALL CRUD (CREATE, READ, UPDATE AND DELETE) OPERATIONS USING TYONTEKIJA TABLE
        // ----------------------------------------------------------
        {
            // Create a conncetion to SQL Sever using Windows authenticatíon
            using (SqlConnection conn = new SqlConnection("Data Source=DESKTOP-2Q0KJ7B\\SQLEXPRESS;Initial Catalog=Henkilosto;Integrated Security=True"))
            {
                // Open the connection and see status
                conn.Open();
                Console.WriteLine(conn.State);
                Console.WriteLine("Yhteyteen vastaa SQL Server versio " + conn.ServerVersion);

                // Create a sql command to insert a new employee to Tyontekija table CREATE
                string insertEmployee = "INSERT INTO dbo.Tyontekija (Etunimi, Sukunimi) VALUES ('Taavi', 'Toivoton');";

                // Send command to connection
                SqlCommand cmd = new SqlCommand(insertEmployee, conn);

                // Execute command which does not return a result set
                cmd.ExecuteNonQuery();

                // Close the connection when done
                conn.Close();
            }

            // Create an other connection to the Db
            using (SqlConnection conn2 = new SqlConnection("Data Source=DESKTOP-2Q0KJ7B\\SQLEXPRESS;Initial Catalog=Henkilosto;Integrated Security=True"))
            {
                conn2.Open();

                // Create a sql command to update Calles city in Tyontekija table UPDATE
                string updateEmployee = "UPDATE dbo.Tyontekija SET Postitoimipaikka = 'Turku' WHERE TyontekijaID = 1008;";
                SqlCommand cmd2 = new SqlCommand(updateEmployee, conn2);
                cmd2.ExecuteNonQuery();
                conn2.Close();
            }

            // Create 3rd connection to the Db
            using (SqlConnection conn3 = new SqlConnection("Data Source=DESKTOP-2Q0KJ7B\\SQLEXPRESS;Initial Catalog=Henkilosto;Integrated Security=True"))
            {

                conn3.Open();

                // Create SQL query to retrieve all rows from Tyontekija table READ
                string queryAllEmployees = "SELECT Etunimi, Sukunimi FROM dbo.Tyontekija;";
                SqlCommand cmd3 = new SqlCommand(queryAllEmployees, conn3);

                // To avoid eternal loop use timeout
                cmd3.CommandTimeout = 10;

                // Use reader to handle result set
                SqlDataReader reader = cmd3.ExecuteReader();

                // Print data to screen while reader gets more rows
                while (reader.Read())
                {
                    // Format output with tabs 
                    Console.WriteLine("\t{0}\t{1}", reader.GetString(0), reader.GetString(1));
                }

                // Close the connection
                conn3.Close();

            }

            // Create 4TH connection to the Db
            using (SqlConnection conn4 = new SqlConnection("Data Source=DESKTOP-2Q0KJ7B\\SQLEXPRESS;Initial Catalog=Henkilosto;Integrated Security=True"))
            {

                conn4.Open();

                // Create SQL query to retrieve all rows from Tyontekija table READ
                string deleteEmployee = "DELETE FROM dbo.Tyontekija WHERE TyontekijaID IN (1011, 1012);";
                SqlCommand cmd4 = new SqlCommand(deleteEmployee, conn4);
                cmd4.ExecuteNonQuery();

                conn4.Close();

            }
            Console.ReadLine();
        }
    }
}
