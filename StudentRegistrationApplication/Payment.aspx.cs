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

            int paymentMethod = Int32.Parse(ddlPaymentMethod.SelectedValue.ToString());
            if (paymentMethod ==  1)
            {
                PaymentMultiView.ActiveViewIndex = 0;
            }
            else if(paymentMethod == 2)
            {
                PaymentMultiView.ActiveViewIndex = 1;
            }
            else
            {
                PaymentMultiView.ActiveViewIndex = 2;
            }
            
        }
    }
}