using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication7
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = 0;
            ViewServiceReference.ViewAndUpdateServicesClient viewObject = new ViewServiceReference.ViewAndUpdateServicesClient();
            string name = viewObject.viewName(id);
            nameLabel.Text = "Hello, " + name;

            string username = viewObject.viewUserName(id);
            usernameLabel.Text = username;

            string email = viewObject.viewEmail(id);
            emailLabel.Text = email;

            string pass = viewObject.viewPassword(id);
            passwordLabel.Text = pass;

            string mobile = viewObject.viewMobileNumber(id);
            mobileLabel.Text = mobile;

            string address = viewObject.viewAddress(id);
            addressLabel.Text = address;

            string creditnum = viewObject.viewCreditNumber(id);
            creditnumLabel.Text = creditnum;

            string creditpass = viewObject.viewCreditPassword(id);
            creditpassLabel.Text = creditpass;
        }
    }
}