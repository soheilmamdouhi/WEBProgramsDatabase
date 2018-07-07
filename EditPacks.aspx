<%@ Page Title="Edit Packs" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="EditPacks.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
	<section class="featured">
        <div class="content-wrapper">
<%--            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Modify this template to jump-start your ASP.NET application.</h2>
            </hgroup>--%>
            <table style="width: 100%">
				<tr>
					<td style="height: 4px; width: 40%;" class="auto-style3">
					<asp:Label ID="lblMinID" runat="server" Text="Min ID"></asp:Label>
					</td>
					<td style="height: 4px">
					<asp:TextBox ID="txtMinID" runat="server" Height="16px" Width="144px" MaxLength="50"></asp:TextBox>
					    <asp:RequiredFieldValidator ID="rfvMinID" runat="server" ControlToValidate="txtMinID" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Please enter minimum ID</asp:RequiredFieldValidator>
					</td>
				</tr>
				<tr>
					<td class="auto-style3" style="height: 1px; width: 40%;">
					<asp:Label ID="lblMaxID" runat="server" Text="Max ID"></asp:Label>
					</td>
					<td style="height: 1px">
					<asp:TextBox ID="txtMaxID" runat="server" Height="16px" Width="144px" MaxLength="50"></asp:TextBox>
					    <asp:RequiredFieldValidator ID="rfvMaxID" runat="server" ControlToValidate="txtMaxID" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Please enter maximum ID</asp:RequiredFieldValidator>
					</td>
				</tr>
				<tr>
					<td style="height: 3px; width: 40%;" class="auto-style3">
					<asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
					</td>
					<td style="height: 3px">
					<asp:TextBox ID="txtAddress" runat="server" Height="16px" Width="144px" MaxLength="50"></asp:TextBox>
					    <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Please enter programs address</asp:RequiredFieldValidator>
					</td>
				</tr>
                <tr>
					<td style="height: 3px; width: 40%;" class="auto-style3">
					
					</td>
					<td style="height: 3px">
					<asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
					</td>
				</tr>
			</table>
        	<table align="center" style="width: 100%">
				<tr>
					<td class="auto-style2">
					<asp:Button ID="btnUpdate" runat="server" Text="Update" Width="100px" OnClick="btnUpdate_Click" />
					</td>
				</tr>
			</table>
			
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
	<h3>&nbsp;</h3>
	<p class="auto-style4">
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
	.auto-style4 {
	direction: ltr;
}
	</style>
</asp:Content>
