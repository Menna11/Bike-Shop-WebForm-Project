using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class Parts : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["masterConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Fillpartsdata();
        }
        void Fillpartsdata()
        {
            try
            {
                SqlConnection sqlConnection = new SqlConnection(connection);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand sqlCommand = new SqlCommand("SELECT * from BikeParts", sqlConnection);
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
                DataTable dataTable = new DataTable();
                sqlDataAdapter.Fill(dataTable);

                Label1.Text = dataTable.Rows[0]["name"].ToString();
                Label9.Text = dataTable.Rows[0]["price"].ToString();
                Label2.Text = dataTable.Rows[1]["name"].ToString();
                Label10.Text = dataTable.Rows[1]["price"].ToString();
                Label3.Text = dataTable.Rows[2]["name"].ToString();
                Label11.Text = dataTable.Rows[2]["price"].ToString();
                Label4.Text = dataTable.Rows[3]["name"].ToString();
                Label12.Text = dataTable.Rows[3]["price"].ToString();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}