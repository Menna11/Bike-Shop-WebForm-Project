<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Bikedetails.aspx.cs" Inherits="WebApplication7.Bikedetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section>
          <center>
        <h3 class="card-title"><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></h3>
          </center>
     
      <asp:Image runat="server" style="margin-left:500px;" ID="image1" width="500" Height="500" class="img-fluid"/>
   </section>
    <section>
<br />
       <p class="card-text" style="color:crimson;margin-left:1100px;font-weight:700;font-size:medium;"><asp:Label  ID="Label5" runat="server" Text="Label"></asp:Label> L.E</p>
       <a class="btn btn-primary" style="margin-left:1100px;" href="Bikedetails.aspx">Add To Cart</a>
        <br />
        <br />
   </section>
     <section>
      <div class="container" style="background-color:aliceblue">
         <div class="row">
            <div class="col-12" >
               <center>
                  <h2>Features</h2>
                   <br />
                   <br />
               </center>
            </div>
         </div>
          <div class="row">
  <div class="col-sm-3">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Max Weight</h5>
        <p class="card-text"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></p>
      </div>
    </div>
  </div>
  <div class="col-sm-3">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Frame Material</h5>
        <p class="card-text"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></p>
      </div>
    </div>
  </div>
<div class="col-sm-3">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Wheel Size</h5>
        <p class="card-text"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></p>
      </div>
    </div>
  </div>
<div class="col-sm-3">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Saddle Type</h5>
        <p class="card-text"><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></p>
      </div>
    </div>
  </div>

</div>

</div>
         <br />
         <br />
         <br />
</section>
  <section>
      <center> 
<div class="container" style="background-color:aliceblue">
         <div class="row">
            <div class="col-12" >
               <center>
                  <h2>Accessories</h2>
                   <br />
                   <br />
               </center>
            </div>
         </div>
 <div class="card mb-3" style="max-width: 500px;">
  <div class="row no-gutters"">
    <div class="col-md-6">
      <img src="imgs/accessories.jpg" style="width:500px" class="card-img"  alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title" style="width:500px">BOSCH ALL-NEW SMART SYSTEM</h5>
        <p class="card-text" style="width:400px">The new LED remote is Bosch’s first foray into offering eBikes without a display, and it uses different colours on the right side of the Bosch logo to let riders know what mode they’re riding in, as well as 5 bars on the left side of the logo to show approximate remaining battery. This is a real trend in the eMTB space, and something Giant recently implemented in their new Reign E+ Range.
  </div>
    </div>
  </div>
</div>
</div>
 </center>
  </section>
</asp:Content>
