<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="YurtProje.İletisim" %>

<%@ Register Assembly="DevExpress.Web.ASPxRichEdit.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxRichEdit" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contact" style="margin-top: 4%">
        <div class="container">
            <div class="text-center">
                <h3 style="margin-top: 5%">İletişim</h3>
                <p>Yurt hakkında daha detaylı bilgi almak için arayabilirsiniz 7/24 açığız</p>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.2s">
                    <h2>7/24 açığız</h2>
                    <p>Detaylı bilgi almak için sosyal medya hesaplarımızdan da mesaj yollayabilirsiniz.</p>
                </div>

                <div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.4s">
                    <h2>Adres</h2>
                    <ul>
                        <li><i class="fa fa-home fa-2x"></i>İstiklal Mah. 407 Sk. No: 36/A Serdivan - Sakarya </li>
                        <hr>
                        <li><i class="fa fa-phone fa-2x"></i>0 (264) 211 07 59 </li>
                        <hr />
                        <li><i class="fa fa-envelope fa-2x"></i>sakaryadirilisyurdu@hotmail.com</li>
                    </ul>
                </div>

                <div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">
                    <div class="form-group">
                        <asp:TextBox ID="TextAdı" runat="server" class="form-control" placeholder="Adınız" data-rule="minlen:2" data-msg="Lütfen Adınızı tekrar giriniz" autocomplete="off"></asp:TextBox>
                        <div class="validation"></div>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="TextSoyadı" runat="server" class="form-control" placeholder="Soyadınız" data-rule="minlen:2" data-msg="Lütfen Soyadınızı tekrar giriniz"  autocomplete="off"></asp:TextBox>
                        <div class="validation"></div>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="TextEmail" runat="server" class="form-control" placeholder="Email Adresiniz" data-rule="email" data-msg="Email de hata var Lütfen tekrar giriniz"  autocomplete="off"></asp:TextBox>
                        <div class="validation"></div>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="TextKonu" runat="server" class="form-control" placeholder="Konu" data-rule="minlen:4" data-msg="Lütfen konu başlığını giriniz"  autocomplete="off"></asp:TextBox>
                        <div class="validation"></div>
                    </div>
                    <div class="form-group">
                        <textarea id="TextMesaj" class="form-control" rows="5" data-rule="required" data-msg="Lütfen mesajınızı giriniz." placeholder="Mesaj" aria-autocomplete="none" runat="server"></textarea>
                        <div class="validation"></div>
                    </div>
                    <asp:Button ID="ButtonGonder" runat="server" Text="Gönder" class="btn btn-theme pull-left" OnClick="ButtonGonder_Click" autocomplete="off" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
