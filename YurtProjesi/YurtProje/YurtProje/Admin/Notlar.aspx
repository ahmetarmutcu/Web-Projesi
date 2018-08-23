<%@ Page Title="" Language="C#" MasterPageFile="Admin.Master" AutoEventWireup="true" CodeBehind="Notlar.aspx.cs" Inherits="YurtProje.Notlar" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="color: red; margin-top: 2%; text-align: center">Notlar Sayfası</h1>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="TBL_NOT" EnableTheming="True" KeyFieldName="ID" Theme="Office2010Blue">

        <SettingsAdaptivity>
            <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
        </SettingsAdaptivity>

        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
        <SettingsSearchPanel Visible="True" />

        <EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ADI" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="SOYADI" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="TARIH" VisibleIndex="4">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="NOTBASLIK" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NOTDETAY" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
        </Columns>

    </dx:ASPxGridView>
    <asp:SqlDataSource ID="TBL_NOT" runat="server" ConnectionString="<%$ ConnectionStrings:DboYurtConnectionString %>" DeleteCommand="DELETE FROM TBL_NOTLAR WHERE (ID = @ID)" InsertCommand="INSERT INTO TBL_NOTLAR(ADI, SOYADI, TARIH, NOTBASLIK, NOTDETAY) VALUES (@ADI, @SOYADI, @TARIH, @NOTBASLIK, @NOTDETAY)" SelectCommand="SELECT TBL_NOTLAR.* FROM TBL_NOTLAR" UpdateCommand="UPDATE TBL_NOTLAR SET ADI = @ADI, SOYADI = @SOYADI, TARIH = @TARIH, NOTBASLIK = @NOTBASLIK, NOTDETAY = @NOTDETAY WHERE ID=@ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ADI" />
            <asp:Parameter Name="SOYADI" />
            <asp:Parameter Name="TARIH" />
            <asp:Parameter Name="NOTBASLIK" />
            <asp:Parameter Name="NOTDETAY" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ADI" />
            <asp:Parameter Name="SOYADI" />
            <asp:Parameter Name="TARIH" />
            <asp:Parameter Name="NOTBASLIK" />
            <asp:Parameter Name="NOTDETAY" />
            <asp:Parameter Name="ID" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
