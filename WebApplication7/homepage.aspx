<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="homepage.aspx.cs" Inherits="WebApplication7.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
      <img src="imgs/home-bg.jpg" width="2000" class="img-fluid"/>
   </section>

   <section>
<br />
       <br />
   </section>
   <section>
      <div class="container" style="background-color:aliceblue">
         <div class="row">
            <div class="col-12" >
               <center>
                  <h2>Our Newest Editions</h2>
                   <br />
                   <br />
               </center>
            </div>
         </div>
         <div class="row" >
            <div class="col-md-4" >
               <center>
                  <img width="150" height="200" src="imgs/bike1.png" />
                  <h4>T52-Manual</h4>
                   <button style="background-color:cornflowerblue;color:white">Shop Now</button>
                  </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150" height="200" src="imgs/bike2.png"/>
                  <h4>M90-All In</h4>
                     <button style="background-color:cornflowerblue;color:white">Shop Now</button>
                  </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150" height="200" src="imgs/bike3.png"/>
                  <h4>TMI-9000</h4>
                     <button style="background-color:cornflowerblue;color:white">Shop Now</button>
                   </center>
            </div>
         </div>
      </div>
   </section>
    <br />
    <br />
    <section>
      <img src="imgs/home2.png" width="2000" class="img-fluid"/>
   </section>

</asp:Content>