<%@ Page Title="" Language="C#" MasterPageFile="~/Restricted/Site1.Master" AutoEventWireup="true" CodeBehind="Grilla.aspx.cs" Inherits="Grillajueves.Restricted.ListaStatic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://kit.fontawesome.com/8b96ab83b8.js" crossorigin="anonymous"></script>
    <link href="../Content/Site.css" rel="stylesheet" />
    <asp:Button ID="btnNew" runat="server" Text="Nuevo" OnClick="btnNew_Click"/>
    <asp:GridView ID="gvPersona" runat="server" AutoGenerateColumns="false" OnRowEditing="gvPersona_RowEditing" OnRowUpdating="gvPersona_RowUpdating">
        <Columns>
            <asp:TemplateField><%--columna--%>
                <HeaderTemplate>
                    <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                </HeaderTemplate>
                <%--TITULOS--%>

                <ItemTemplate>
                    <%--registro--%>
                    <asp:Label ID="lblItemNombreProducto" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                </ItemTemplate>

                <EditItemTemplate>
                    <%--edición--%>
                    <asp:TextBox ID="txtEditNombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField><%--columna--%>
                <HeaderTemplate>
                    <asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label>
                </HeaderTemplate>
                <%--TITULOS--%>

                <ItemTemplate>
                    <%--registro--%>
                    <asp:Label ID="lblItemApellido" runat="server" Text='<%# Bind("Apellido") %>'></asp:Label>
                </ItemTemplate>

                <EditItemTemplate>
                    <%--edición--%>
                    <asp:TextBox ID="txtEditApellido" runat="server" Text='<%# Bind("Apellido") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField><%--columna--%>
                <HeaderTemplate>
                    <asp:Label ID="lblEdad" runat="server" Text="Edad"></asp:Label>
                </HeaderTemplate>
                <%--TITULOS--%>

                <ItemTemplate>
                    <%--registro--%>
                    <asp:Label ID="lblItemEdad" runat="server" Text='<%# Bind("Edad") %>'></asp:Label>
                </ItemTemplate>

                <EditItemTemplate>
                    <%--edición--%>
                    <asp:TextBox ID="txtEditEdad" runat="server" Text='<%# Bind("Edad") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderStyle-Width="50px" ItemStyle-Wrap="false">
                <ItemTemplate>
                    <asp:LinkButton ID="lnkbttDelete" runat="server" CssClass="button-sm buttonDanger" ToolTip="Eliminar" CommandName="Delete">
												<i class="fa fa-fw fa-trash-o"></i>
                    </asp:LinkButton>
                    &nbsp;
											<asp:LinkButton ID="lnkbttEdit" runat="server" CssClass="button-sm buttonWarning" ToolTip="Editar" CommandName="Edit">
												<i class="fa fa-fw fa-edit"></i>
                                            </asp:LinkButton>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:LinkButton ID="lnkbttCancel" runat="server" CssClass="button-sm buttonDanger" ToolTip="Cancelar" CommandName="Cancel">
												<i class="fa fa-fw fa-close"></i>
                    </asp:LinkButton>
                    &nbsp;
											<asp:LinkButton ID="lnkbttAccept" runat="server" CssClass="button-sm buttonSuccess" ToolTip="Aceptar" CommandName="Update">
												<i class="fa fa-fw fa-check"></i>
                                            </asp:LinkButton>
                </EditItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <asp:PlaceHolder ID="phNew" runat="server" Visible="false">
						<div class="overlay">
							<div class="overlayContainer">
								<div class="modal" style="animation-name: none;">
									<div class="modalHeader">
										<asp:LinkButton ID="lnkbttCloseModalNew" runat="server" CssClass="closeModal" OnClick="lnkbttCloseModalNew_Click">&times;</asp:LinkButton>
										<asp:Label ID="lblModalHeader" runat="server" Text="Crear nuevo Registro"></asp:Label>
									</div>
									<div class="modalBody">
										<div class="flex-container">
											<div class="form-group-sm" style="width: 100px;">
												<asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
												<asp:TextBox ID="txtNombre" runat="server" CssClass="form-control-sm"></asp:TextBox>
											</div>
											<div class="form-group-sm" style="width: 200px;">
												<asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label>
												<asp:TextBox ID="txtApellido" runat="server" CssClass="form-control-sm"></asp:TextBox>
											</div>
											<div class="form-group-sm" style="width: 100px;">
												<asp:Label ID="lblEdad" runat="server" Text="Edad"></asp:Label>
												<asp:TextBox ID="txtEdad" runat="server" CssClass="form-control-sm"></asp:TextBox>
											</div>
										</div>
									</div>
									<div class="modalFooter" style="text-align: right;">
											<asp:LinkButton ID="lnkbttCancel" runat="server" CssClass="button buttonDanger" Text="Cancelar" OnClick="lnkbttCancel_Click"></asp:LinkButton>&nbsp;
											<asp:LinkButton ID="lnkbtttAcceptNew" runat="server" CssClass="button buttonSuccess" Text="Guardar" OnClick="lnkbtttAcceptNew_Click"></asp:LinkButton>
									</div>
								</div>
							</div>
						</div>
					</asp:PlaceHolder>
</asp:Content>
