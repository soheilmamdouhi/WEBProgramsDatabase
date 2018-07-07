<%@ Page Title="Edit" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="_Default" %>

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
					<asp:TextBox ID="txtName" runat="server" Height="16px" Width="144px" MaxLength="50"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td class="auto-style8" style="width: 40%">
					<asp:Label ID="lblVersion" runat="server" Text="Version"></asp:Label>
					</td>
					<td class="auto-style9">
					<asp:TextBox ID="txtVersion" runat="server" Height="16px" Width="144px" MaxLength="50"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td class="auto-style6" style="width: 40%">
					<asp:Label ID="lblPlatform" runat="server" Text="Platform"></asp:Label>
					</td>
					<td class="auto-style7">
					<asp:DropDownList ID="ddlPlatform" runat="server" Width="150px">
						<asp:ListItem>Windows</asp:ListItem>
						<asp:ListItem>Linux (RPM)</asp:ListItem>
						<asp:ListItem>Linux (DEB)</asp:ListItem>
						<asp:ListItem>Unix</asp:ListItem>
						<asp:ListItem>Java</asp:ListItem>
						<asp:ListItem>Java(Mobile)</asp:ListItem>
						<asp:ListItem>Android</asp:ListItem>
					</asp:DropDownList>
					</td>
				</tr>
				<tr>
					<td class="auto-style10" style="width: 40%">
					<asp:Label ID="lblCategory" runat="server" Text="Category"></asp:Label>
					</td>
					<td class="auto-style11">
					<asp:DropDownList ID="ddlCategory" runat="server" Width="150px">
						<asp:ListItem>Operating Systems</asp:ListItem>
						<asp:ListItem>Utilities</asp:ListItem>
						<asp:ListItem>Multimedia</asp:ListItem>
						<asp:ListItem>Internet</asp:ListItem>
						<asp:ListItem>Networks</asp:ListItem>
						<asp:ListItem>Programming Tools</asp:ListItem>
						<asp:ListItem>Security</asp:ListItem>
						<asp:ListItem>CD/DVD Tools</asp:ListItem>
						<asp:ListItem>Game</asp:ListItem>
						<asp:ListItem>Driver</asp:ListItem>
						<asp:ListItem>Graphics</asp:ListItem>
						<asp:ListItem>Others</asp:ListItem>
					</asp:DropDownList>
					</td>
				</tr>
				<tr>
					<td class="auto-style12" style="width: 40%">
					<asp:Label ID="lblCrackType" runat="server" Text="CrackType"></asp:Label>
					</td>
					<td class="auto-style13">
					<asp:DropDownList ID="ddlCrackType" runat="server" Width="150px">
						<asp:ListItem>Freeware</asp:ListItem>
						<asp:ListItem>Pache</asp:ListItem>
						<asp:ListItem>Crack File(s)</asp:ListItem>
						<asp:ListItem>Keygen</asp:ListItem>
						<asp:ListItem>Serial No.</asp:ListItem>
					</asp:DropDownList>
					</td>
				</tr>
				<tr>
					<td class="auto-style14" style="width: 40%">
					<asp:Label ID="lblSerialNumber" runat="server" Text="Serial Number"></asp:Label>
					</td>
					<td class="auto-style15">
					<asp:TextBox ID="txtSerialNumber" runat="server" Height="16px" Width="144px" MaxLength="100"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td class="auto-style3" style="width: 40%">
					<asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
					</td>
					<td>
					<asp:TextBox ID="txtAddress" runat="server" Height="16px" Width="144px" MaxLength="50"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td class="auto-style3" style="width: 40%">
					<asp:Label ID="lblProgramsCount" runat="server" Text="Number of registered programs"></asp:Label>
					</td>
					<td>
					<asp:Label ID="lblProgramsCounter" runat="server"></asp:Label>
					<asp:Label ID="lblID" runat="server" Visible="False"></asp:Label>
					</td>
				</tr>
                <tr>
					<td class="auto-style3" style="width: 40%">

					</td>
					<td>
					    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
					</td>
				</tr>
			</table>
			
        	<table align="center" style="width: 100%">
				<tr>
					<td class="auto-style2">
					<asp:Button ID="btnInsert" runat="server" Text="Insert" Width="100px" OnClick="btnInsert_Click" />
					</td>
					<td class="auto-style2">
					<asp:Button ID="btnUpdate" runat="server" Text="Update" Width="100px" OnClick="btnUpdate_Click" />
					</td>
					<td class="auto-style2">
					<asp:Button ID="btnDelete" runat="server" Text="Delete" Width="100px" OnClick="btnDelete_Click" />
					</td>
					<td class="auto-style2">
					<asp:Button ID="btnSearch" runat="server" Text="Search" Width="100px" OnClick="btnSearch_Click" />
					</td>
				</tr>
			</table>
			
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
	<p>
	<asp:GridView ID="dgridShowData" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="dgridShowData_SelectedIndexChanged">
		<AlternatingRowStyle BackColor="White" />
		<Columns>
			<asp:CommandField SelectImageUrl="~/Images/checkmark.png" ShowSelectButton="True" />
		</Columns>
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
            height: 9px;
        }
        .auto-style5
        {
            height: 9px;
        }
        .auto-style6
        {
            text-align: right;
            height: 5px;
        }
        .auto-style7
        {
            height: 5px;
        }
        .auto-style8
        {
            text-align: right;
            height: 3px;
        }
        .auto-style9
        {
            height: 3px;
        }
        .auto-style10
        {
            text-align: right;
            height: 4px;
        }
        .auto-style11
        {
            height: 4px;
        }
        .auto-style12
        {
            text-align: right;
            height: 2px;
        }
        .auto-style13
        {
            height: 2px;
        }
        .auto-style14
        {
            text-align: right;
            height: 22px;
        }
        .auto-style15
        {
            height: 22px;
        }
	</style>
</asp:Content>
