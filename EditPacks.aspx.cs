using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dgridShowData.DataSource = clsProgramsManager.Select();
            dgridShowData.DataBind();
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        Int64 intMinID, intMaxID;

        clsPrograms objPrograms = new clsPrograms();
        clsDBMS objDBMS = new clsDBMS();

        intMinID = Convert.ToInt64(txtMinID.Text);
        intMaxID = Convert.ToInt64(txtMaxID.Text);
        objPrograms.strAddress = txtAddress.Text;

        if (intMinID < intMaxID)
        {
            clsProgramsManager.PackAddress(objPrograms, txtMinID.Text, txtMaxID.Text);

            dgridShowData.DataSource = clsProgramsManager.Select();
            dgridShowData.DataBind();

            txtMinID.Text = "";
            txtMaxID.Text = "";
            txtAddress.Text = "";

            lblMessage.Text = "Programs address successfully updated in database.";
        }
        else
        {
            lblMessage.Text = "Min ID must be smaller than of Max ID.";
        }
    }
}