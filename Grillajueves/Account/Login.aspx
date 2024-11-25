<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Grillajueves.Account.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="frmLogIn" runat="server">
		<div class="container">
			<div class="panel loginPanel">
				<div class="loginHeader">
					<asp:Label ID="lblLoginHeader" runat="server" Text="Bienvenido a la APP"></asp:Label>
				</div>
				<div class="loginBody">
					<div class="controlAddon leftAddon">
						<i class="fa fa-w fa-user"></i>
						<asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" TextMode="SingleLine" PlaceHolder="Usuario"></asp:TextBox>
					</div>
					<div class="controlAddon leftAddon">
						<i class="fa fa-w fa-unlock-alt"></i>
						<asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" PlaceHolder="Contraseña"></asp:TextBox>
					</div>
				</div>
				<div class="loginFooter">
					<asp:LinkButton ID="lnkbttLogIn" runat="server" CssClass="button buttonSuccess" OnClick="lnkbttLogIn_Click">Ingresar</asp:LinkButton>
				</div>
			</div>
		</div>
		<asp:PlaceHolder ID="phAlert" runat="server" Visible="false">
			<div class="overlay" style="z-index: 2;">
				<div class="overlayContainer">
					<asp:Panel ID="pAlert" runat="server" CssClass="alert alertDanger card">
						<asp:LinkButton ID="lnkbttCloseAlert" runat="server" CssClass="closeAlert" OnClick="lnkbttCloseAlert_Click">&times;</asp:LinkButton>
						<asp:Label ID="lblAlert" runat="server">Prueba de alera</asp:Label>
					</asp:Panel>
				</div>
			</div>
		</asp:PlaceHolder>
		</form>
</body>
</html>
