<%@ Page Title="" Language="C#" MasterPageFile="Admin.Master" AutoEventWireup="true" CodeBehind="Odalar.aspx.cs" Inherits="YurtProje.Odalar" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="color: red; margin-top: 2%; text-align: center">Odalardaki Öğrenci Yatak Konumları</h1>

    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="TBL_ODALAR" KeyFieldName="ID" Theme="Office2010Blue">
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
            <dx:GridViewDataTextColumn FieldName="ODANO" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="YATAK" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ADI" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="SOYADI" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="BOLUM" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="TBL_ODALAR" runat="server" ConnectionString="<%$ ConnectionStrings:DboYurtConnectionString3 %>" DeleteCommand="DELETE FROM TBL_ODA WHERE (ID = @ID)" InsertCommand="INSERT INTO TBL_ODA(ODANO, YATAK, ADI, SOYADI, BOLUM) VALUES (@ODANO, @YATAK, @ADI, @SOYADI, @BOLUM)" SelectCommand="SELECT ID, ODANO, YATAK, ADI, SOYADI, BOLUM FROM TBL_ODA ORDER BY ODANO" UpdateCommand="UPDATE TBL_ODA SET ODANO = @ODANO, YATAK = @YATAK, ADI = @ADI, SOYADI = @SOYADI, BOLUM = @BOLUM WHERE (ID = @ID)">
        <DeleteParameters>
            <asp:Parameter Name="ID" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ODANO" />
            <asp:Parameter Name="YATAK" />
            <asp:Parameter Name="ADI" />
            <asp:Parameter Name="SOYADI" />
            <asp:Parameter Name="BOLUM" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ODANO" />
            <asp:Parameter Name="YATAK" />
            <asp:Parameter Name="ADI" />
            <asp:Parameter Name="SOYADI" />
            <asp:Parameter Name="BOLUM" />
            <asp:Parameter Name="ID" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
