using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class Bikedetails : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["masterConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            string[] images = { "imgs/bike1.png", "imgs/bike2.png", "imgs/bike3.png", "imgs/bike4.png", "imgs/bike.jpg", "imgs/bike5.jpg", "imgs/bike6.jpg", "imgs/bike7.jpg" };

            string str = Request.QueryString["id"].ToString();
            int src = int.Parse(str);

            image1.ImageUrl = images[src];


            FillDetails(src);

        }
        void FillDetails(int id)
        {

            try
            {
                SqlConnection sqlConnection = new SqlConnection(connection);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                SqlCommand sqlCommand = new SqlCommand("SELECT * from Bike where bikeid=@a", sqlConnection);
                SqlParameter p1 = new SqlParameter("@a", id);
                sqlCommand.Parameters.Add(p1);
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
                DataTable dataTable = new DataTable();
                sqlDataAdapter.Fill(dataTable);
                Label1.Text = dataTable.Rows[0]["maxweight"].ToString();
                Label2.Text = dataTable.Rows[0]["frame"].ToString();
                Label3.Text = dataTable.Rows[0]["wheelsize"].ToString();
                Label4.Text = dataTable.Rows[0]["saddle"].ToString();
                Label5.Text = dataTable.Rows[0]["price"].ToString();
                Label6.Text = dataTable.Rows[0]["bikename"].ToString();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}