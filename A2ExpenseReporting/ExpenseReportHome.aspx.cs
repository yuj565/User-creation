using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A2ExpenseReporting
{
    public partial class ExpenseReportHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                //my if statemnet

            {
                ddlExpenseType.SelectedIndex = 0;
                //-1 for no selection or 0 for the 1st selection


            }
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
             lblSUMMARY.Text = ddlExpenseType.Text+ "," + tboxExpenseData.Text + "," + tboxExpenseDescription.Text + "," + tboxExpenseAmount.Text;
            //print out all the user input

        }

        protected void BtnClear_Click(object sender, EventArgs e)
        {
            ddlExpenseType.SelectedIndex = 0;
            //-1 for no selection or 0 for the 1st selection
            tboxExpenseData.Text = "";
            //clear the ExpenseData in text box.
            tboxExpenseDescription.Text = "";
            //clear the ExpenseDescription in text box.
            tboxExpenseAmount.Text = "";
            //clear the ExpenseAmount in text box.
            lblSUMMARY.Text = "";
            //clear the label.

        }
    }
}