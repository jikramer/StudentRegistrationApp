using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistrationApplication
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SetPayMethodButton_Click(object sender, EventArgs e)
        {
            PaymentMultiView.ActiveViewIndex = 0;
        }

        protected void ViewAccountButton_Click(object sender, EventArgs e)
        {
            PaymentMultiView.ActiveViewIndex = 1;
        }

        protected void MakePaymentButton_Click(object sender, EventArgs e)
        {
            PaymentMultiView.ActiveViewIndex = 2;
        }
    }
}