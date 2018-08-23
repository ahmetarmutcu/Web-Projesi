<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YurtProje.Admin.Yorumlar" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 style="color: red; margin-top: 2%; text-align: center">Ziyaretçi Mesaj Sayfası</h1>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="TBL_ZIYARETCIMESAJLARI" EnableTheming="True" KeyFieldName="ID" Theme="Office2010Blue">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
        <SettingsSearchPanel Visible="True" />

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn ShowDeleteButton="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OGR_AD" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OGR_SOYAD" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OGR_EMAIL" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OGR_KONU" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OGR_MESAJ" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="TARIH" VisibleIndex="7">
            </dx:GridViewDataDateColumn>
        </Columns>
</dx:ASPxGridView>
     <asp:SqlDataSource ID="TBL_ZIYARETCIMESAJLARI" runat="server" ConnectionString="<%$ ConnectionStrings:DboYurtConnectionString %>" DeleteCommand="DELETE FROM TBL_ZIYARETCIMESAJ WHERE ID=@ID" SelectCommand="SELECT TBL_ZIYARETCIMESAJ.* FROM TBL_ZIYARETCIMESAJ">
         <DeleteParameters>
             <asp:Parameter Name="ID" />
         </DeleteParameters>
     </asp:SqlDataSource>
</asp:Content>
