<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="YurtYoneticileri.aspx.cs" Inherits="YurtProje.YurtOgrencileri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="our-team" style="margin-top: 5%">
        <div class="container">
            <div class="text-center">
                <h3 style="text-align: center; color: dodgerblue">Yurt Yöneticileri</h3>
            </div>
            <div class="row">
                <asp:ListView ID="yurtyoneticileri" runat="server">
                    <ItemTemplate>
                        <div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">
                            <div class="text-center">
                                <img src='images/Yoneticiler/<%#Eval("RESIMYOL") %>' alt="" style="width: 200px; height: 200px; border-radius: 100px; -webkit-border-radius: 100px; -moz-border-radius: 100px">
                                <h2><%#Eval("ADI")%> <%#Eval("SOYADI")%></h2>
                                <h4><%#Eval("EMAIL")%></h4>
                                <p><%#Eval("ACIKLAMA")%></p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
    </div>
</asp:Content>
