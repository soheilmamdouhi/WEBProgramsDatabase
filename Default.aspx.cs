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

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        clsPrograms objPrograms = new clsPrograms();

        if ((chkName.Checked == false) && (chkPlatform.Checked == false))
        {
            dgridShowData.DataSource = clsProgramsManager.Select();
            dgridShowData.DataBind();
        }
        else if ((chkName.Checked == true) && (chkPlatform.Checked == false))
        {
            objPrograms.strName = txtName.Text;
            //objPrograms.strPlatform = ddlPlatform.Text;

            dgridShowData.DataSource = clsProgramsManager.Search(objPrograms);
            dgridShowData.DataBind();
        }
        else if ((chkName.Checked == false) && (chkPlatform.Checked == true))
        {
            objPrograms.strPlatform = ddlPlatform.Text;

            dgridShowData.DataSource = clsProgramsManager.Search(objPrograms);
            dgridShowData.DataBind();
        }
        else if ((chkName.Checked == true) && (chkPlatform.Checked == true))
        {
            objPrograms.strName = txtName.Text;
            objPrograms.strPlatform = ddlPlatform.Text;

            dgridShowData.DataSource = clsProgramsManager.Search(objPrograms);
            dgridShowData.DataBind();
        }
        

        //dgridShowData.DataSource = clsProgramsManager.Search(objPrograms);
        //dgridShowData.DataBind();
    }

    protected void chkName_CheckedChanged(object sender, EventArgs e)
    {
        //if (chkName.Checked == true)
        //{
        //    txtName.Enabled = true;
        //}
        //else
        //{
        //    txtName.Enabled = false;
        //}
    }

    protected void chkPlatform_CheckedChanged(object sender, EventArgs e)
    {
        //if (chkPlatform.Checked == true)
        //{
        //    ddlPlatform.Enabled = true;
        //}
        //else
        //{
        //    ddlPlatform.Enabled = false;
        //}
    }
}