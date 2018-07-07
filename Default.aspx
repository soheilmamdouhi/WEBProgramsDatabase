<%@ Page Title="Search" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
<%--            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Modify this template to jump-start your ASP.NET application.</h2>
            </hgroup>--%>
            <table style="width: 100%">
				<tr>
					<td class="auto-style4" style="width: 40%">
					<asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
					</td>
					<td class="auto-style5">
					<asp:TextBox ID="txtName" runat="server" Height="16px" Width="140px" MaxLength="50"></asp:TextBox>
					    <asp:CheckBox ID="chkName" runat="server" OnCheckedChanged="chkName_CheckedChanged" />
					</td>
				</tr>
				<tr>
					<td class="auto-style3" style="width: 40%">
					<asp:Label ID="lblPlatform" runat="server" Text="Platform"></asp:Label>
					</td>
					<td>
					<asp:DropDownList ID="ddlPlatform" runat="server" Width="145px" Height="23px">
						<asp:ListItem>Windows</asp:ListItem>
						<asp:ListItem>Linux (RPM)</asp:ListItem>
						<asp:ListItem>Unix</asp:ListItem>
						<asp:ListItem>Java</asp:ListItem>
						<asp:ListItem>Java(Mobile)</asp:ListItem>
						<asp:ListItem>Android</asp:ListItem>
					</asp:DropDownList>
					    <asp:CheckBox ID="chkPlatform" runat="server" OnCheckedChanged="chkPlatform_CheckedChanged" />
					</td>
				</tr>
			</table>
			
        	<table align="center" style="width: 100%">
				<tr>
					<td class="auto-style2">
					<asp:Button ID="btnSearch" runat="server" Text="Search" Width="100px" OnClick="btnSearch_Click" />
					</td>
				</tr>
			</table>
			
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>&nbsp;</h3>
	<p>
	<asp:GridView ID="dgridShowData" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
		<AlternatingRowStyle BackColor="White" />
		<EditRowStyle BackColor="#2461BF" />
		<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
		<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
		<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
		<RowStyle BackColor="#EFF3FB" />
		<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
	</asp:GridView>
	</p>
    </asp:Content>
<asp:Content id="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
	.auto-style2 {
		text-align: center;
	}
	.auto-style3 {
		text-align: right;
	}
	    .auto-style4
        {
            text-align: right;
            height: 22px;
        }
        .auto-style5
        {
            height: 22px;
        }
	</style>
</asp:Content>
