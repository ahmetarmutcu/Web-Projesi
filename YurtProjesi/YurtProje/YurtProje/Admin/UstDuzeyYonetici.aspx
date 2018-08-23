<%@ Page Title="" Language="C#" MasterPageFile="Admin.Master" AutoEventWireup="true" CodeBehind="UstDuzeyYonetici.aspx.cs" Inherits="YurtProje.Admin.UstDuzeyYonetici" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 style="color:red;margin-top:2%;text-align:center">YURT YÖNETİCİLERİ</h1>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="TBL_ADMIN" Theme="Office2010Blue" KeyFieldName="ID">
        <SettingsAdaptivity>
            <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
        </SettingsAdaptivity>

        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
        <SettingsSearchPanel Visible="True" />

        <EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="KULLANICIADI" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="SIFRE" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="3">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="TBL_ADMIN" runat="server" ConnectionString="<%$ ConnectionStrings:galeri %>" DeleteCommand="DELETE FROM TBL_ADMIN WHERE (ID = @ID)" InsertCommand="INSERT INTO TBL_ADMIN(KULLANICIADI, SIFRE) VALUES (@KULLANICIADI, @SIFRE)" SelectCommand="SELECT KULLANICIADI, SIFRE, ID FROM TBL_ADMIN" UpdateCommand="UPDATE TBL_ADMIN SET KULLANICIADI = @KULLANICIADI, SIFRE = @SIFRE WHERE ID=@ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="KULLANICIADI" />
            <asp:Parameter Name="SIFRE" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="KULLANICIADI" />
            <asp:Parameter Name="SIFRE" />
            <asp:Parameter Name="ID" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
