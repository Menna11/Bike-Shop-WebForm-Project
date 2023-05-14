using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Data.SqlTypes;

namespace WebApplication7
{
    public partial class Bikes : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["masterConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Fillbikesdata();
            
        }


        void Fillbikesdata()
        {
            try
            {
                SqlConnection sqlConnection=new SqlConnection(connection);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand sqlCommand = new SqlCommand("SELECT * from Bike",sqlConnection);
                SqlDataAdapter sqlDataAdapter=new SqlDataAdapter(sqlCommand);
                DataTable dataTable= new DataTable();
                sqlDataAdapter.Fill(dataTable);       
                
                    Label1.Text = dataTable.Rows[0]["bikename"].ToString();
                    Label9.Text = dataTable.Rows[0]["price"].ToString();
                    Label2.Text = dataTable.Rows[1]["bikename"].ToString();
                    Label10.Text = dataTable.Rows[1]["price"].ToString();
                    Label3.Text = dataTable.Rows[2]["bikename"].ToString();
                    Label11.Text = dataTable.Rows[2]["price"].ToString();
                    Label4.Text = dataTable.Rows[3]["bikename"].ToString();
                    Label12.Text = dataTable.Rows[3]["price"].ToString();
                    Label5.Text = dataTable.Rows[4]["bikename"].ToString();
                    Label13.Text = dataTable.Rows[4]["price"].ToString();
                    Label6.Text = dataTable.Rows[5]["bikename"].ToString();
                    Label14.Text = dataTable.Rows[5]["price"].ToString();
                    Label7.Text = dataTable.Rows[6]["bikename"].ToString();
                    Label15.Text = dataTable.Rows[6]["price"].ToString();
                    Label8.Text = dataTable.Rows[7]["bikename"].ToString();
                    Label16.Text = dataTable.Rows[7]["price"].ToString();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bikedetails.aspx?id=0");
        }
    }
}