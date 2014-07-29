<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lab4.aspx.cs" Inherits="Lab4.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    Page Load Time
    <asp:Label ID="lbl1" runat="server" />

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            
            <div>
                <label for="ddlSupplier">Please Choose A Supplier</label>
                <asp:DropDownList ID="ddlSupplier" runat="server" DataTextField="CompanyName" DataValueField="SupplierID" />
            </div>
            <asp:Button ID="Button1" runat="server" Text="Get Products" OnClick="Button1_Click" />
            <div>
                Gridview Load Time
                <asp:Label ID="lbl2" runat="server" />
                <asp:GridView ID="grdProducts" runat="server" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField HeaderText="Product Name" Datafield="ProductName" />
                        <asp:BoundField HeaderText="Unit Price" DataField="UnitPrice" />
                        <asp:BoundField HeaderText="Product ID" DataField="ProductID" />
                    </Columns>
                </asp:GridView>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
