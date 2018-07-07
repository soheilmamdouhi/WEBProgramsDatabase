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

            lblProgramsCounter.Text = clsProgramsManager.Counter();
        }
    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        try
        {
            clsPrograms objPrograms = new clsPrograms();

            objPrograms.strName = txtName.Text;
            objPrograms.strVersion = txtVersion.Text;
            objPrograms.strPlatform = ddlPlatform.Text;
            objPrograms.strCatName = ddlCategory.Text;
            objPrograms.strAddress = txtAddress.Text;
            objPrograms.strCrackType = ddlCrackType.Text;
            objPrograms.strSerialNo = txtSerialNumber.Text;

            clsProgramsManager.Insert(objPrograms);

            dgridShowData.DataSource = clsProgramsManager.Select();
            dgridShowData.DataBind();

            txtName.Text = "";
            txtVersion.Text = "";
            ddlPlatform.SelectedIndex = 0;
            ddlCategory.SelectedIndex = 0;
            txtAddress.Text = "";
            ddlCrackType.SelectedIndex = 0;
            txtSerialNumber.Text = "";

            lblProgramsCounter.Text = clsProgramsManager.Counter();
            lblMessage.Text = "Program successfully registered in database.";
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message.ToString();
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            clsPrograms objPrograms = new clsPrograms();

            objPrograms.strID = lblID.Text;
            objPrograms.strName = txtName.Text;
            objPrograms.strVersion = txtVersion.Text;
            objPrograms.strPlatform = ddlPlatform.Text;
            objPrograms.strCatName = ddlCategory.Text;
            objPrograms.strAddress = txtAddress.Text;
            objPrograms.strCrackType = ddlCrackType.Text;
            objPrograms.strSerialNo = txtSerialNumber.Text;

            clsProgramsManager.Update(objPrograms);

            dgridShowData.DataSource = clsProgramsManager.Select();
            dgridShowData.DataBind();

            lblID.Text = "";
            txtName.Text = "";
            txtVersion.Text = "";
            ddlPlatform.SelectedIndex = 0;
            ddlCategory.SelectedIndex = 0;
            txtAddress.Text = "";
            ddlCrackType.SelectedIndex = 0;
            txtSerialNumber.Text = "";

            lblProgramsCounter.Text = clsProgramsManager.Counter();
            lblMessage.Text = "Program successfully updated in database.";
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message.ToString();
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            clsPrograms objPrograms = new clsPrograms();

            objPrograms.strID = lblID.Text;

            clsProgramsManager.Delete(objPrograms);

            dgridShowData.DataSource = clsProgramsManager.Select();
            dgridShowData.DataBind();

            lblID.Text = "";
            txtName.Text = "";
            txtVersion.Text = "";
            ddlPlatform.SelectedIndex = 0;
            ddlCategory.SelectedIndex = 0;
            txtAddress.Text = "";
            ddlCrackType.SelectedIndex = 0;
            txtSerialNumber.Text = "";

            lblProgramsCounter.Text = clsProgramsManager.Counter();
            lblMessage.Text = "Program successfully deleted from database.";
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message.ToString();
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        try
        {
            clsPrograms objPrograms = new clsPrograms();

            objPrograms.strName = txtName.Text;

            dgridShowData.DataSource = clsProgramsManager.Search(objPrograms);
            dgridShowData.DataBind();
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message.ToString();
        }
    }

    protected void dgridShowData_SelectedIndexChanged(object sender, EventArgs e)
    {
        clsPrograms objPrograms = new clsPrograms();

        objPrograms.strID = dgridShowData.SelectedRow.Cells[1].Text;
        objPrograms.strName = dgridShowData.SelectedRow.Cells[2].Text;
        objPrograms.strVersion = dgridShowData.SelectedRow.Cells[3].Text;
        objPrograms.strPlatform = dgridShowData.SelectedRow.Cells[4].Text;
        objPrograms.strCatName = dgridShowData.SelectedRow.Cells[5].Text;
        objPrograms.strAddress = dgridShowData.SelectedRow.Cells[6].Text;
        objPrograms.strCrackType = dgridShowData.SelectedRow.Cells[7].Text;
        objPrograms.strSerialNo = dgridShowData.SelectedRow.Cells[8].Text;

        if (objPrograms.strName == "&nbsp;")
        {
            objPrograms.strName = "";
        }

        if (objPrograms.strVersion == "&nbsp;")
        {
            objPrograms.strVersion = "";
        }

        if (objPrograms.strAddress == "&nbsp;")
        {
            objPrograms.strAddress = "";
        }

        if (objPrograms.strSerialNo == "&nbsp;")
        {
            objPrograms.strSerialNo = "";
        }

        lblID.Text = objPrograms.strID;
        txtName.Text = objPrograms.strName;
        txtVersion.Text = objPrograms.strVersion;
        ddlPlatform.Text = objPrograms.strPlatform;
        ddlCategory.Text = objPrograms.strCatName;
        txtAddress.Text = objPrograms.strAddress;
        ddlCrackType.Text = objPrograms.strCrackType;
        txtSerialNumber.Text = objPrograms.strSerialNo;

        lblProgramsCounter.Text = clsProgramsManager.Counter();
    }
}