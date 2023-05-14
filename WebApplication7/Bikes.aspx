<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Bikes.aspx.cs" Inherits="WebApplication7.Bikes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div class="row" height="100">
  <div class="col-sm-3">
    <div class="card" width="10rem" >
      <img src="imgs/bike1.png" class="card-img-top" alt="...">
      <div class="card-body"> <h5 class="card-title">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
          </h5>
        <p class="card-text" style="color:crimson;margin-left:190px;font-weight:700;font-size:medium;"><asp:Label  ID="Label9" runat="server" Text="Label"></asp:Label> L.E</p>
            <a class="btn btn-primary" href="Bikedetails.aspx?id=0">See Details</a>
       
      </div>
    </div>
  </div>
  <div class="col-sm-3">
      <div class="card" width="10rem">
      <img src="imgs/bike2.png" class="card-img-top" alt="...">
      <div class="card-body"><h5 class="card-title">
          <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
          </h5>
        <p class="card-text" style="color:crimson;margin-left:190px;font-weight:700;font-size:medium;"><asp:Label  ID="Label10" runat="server" Text="Label"></asp:Label> L.E</p>
        <a class="btn btn-primary" href="Bikedetails.aspx?id=1" >See Details</a>
      </div>
    </div>
  </div>
<div class="col-sm-3">
      <div class="card" width="10rem">
      <img src="imgs/bike3.png" class="card-img-top" alt="...">
      <div class="card-body"><h5 class="card-title">
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </h5>
        <p class="card-text" style="color:crimson;margin-left:190px;font-weight:700;font-size:medium;"><asp:Label  ID="Label11" runat="server" Text="Label"></asp:Label> L.E</p>
        <a class="btn btn-primary" href="Bikedetails.aspx?id=2">See Details</a>
      </div>
    </div>
  </div>
<div class="col-sm-3">
      <div class="card" width="10rem" height="500">
      <img src="imgs/bike4.png" class="card-img-top" height="365" alt="...">
      <div class="card-body"><h5 class="card-title">
      <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
          </h5>
      <p class="card-text" style="color:crimson;margin-left:190px;font-weight:700;font-size:medium;"><asp:Label  ID="Label12" runat="server" Text="Label"></asp:Label> L.E</p>
        <a class="btn btn-primary" href="Bikedetails.aspx?id=3">See Details</a>
      </div>
    </div>
  </div>
<div class="col-sm-3">
      <div class="card" width="10rem" height="500">
      <img src="imgs/bike.jpg" class="card-img-top" height="365" alt="...">
      <div class="card-body"><h5 class="card-title">
          <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
          </h5>
        <p class="card-text"style="color:crimson;margin-left:190px;font-weight:700;font-size:medium;"><asp:Label  ID="Label13" runat="server" Text="Label"></asp:Label> L.E</p>
        <a class="btn btn-primary" href="Bikedetails.aspx?id=4">See Details</a>
      </div>
    </div>
  </div>
<div class="col-sm-3">
      <div class="card" width="10rem" height="500">
      <img src="imgs/bike5.jpg" class="card-img-top" height="365" alt="...">
      <div class="card-body"> <h5 class="card-title">
          <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        </h5>
          <p class="card-text"  style="color:crimson;margin-left:190px;font-weight:700;font-size:medium;"><asp:Label  ID="Label14" runat="server" Text="Label"></asp:Label> L.E</p>
        <asp:LinkButton runat="server" ID="LinkButton2" OnClick="LinkButton1_Click">
            <a class="btn btn-primary" href="Bikedetails.aspx?id=5">See Details</a>
        </asp:LinkButton>
      </div>
    </div>
  </div>
<div class="col-sm-3">
      <div class="card" width="10rem" height="500">
      <img src="imgs/bike6.jpg" class="card-img-top" height="365" alt="...">
      <div class="card-body"><h5 class="card-title">
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
          </h5>
        <p class="card-text"  style="color:crimson;margin-left:190px;font-weight:700;font-size:medium;"><asp:Label  ID="Label15" runat="server" Text="Label"></asp:Label> L.E</p>
        <a class="btn btn-primary" href="Bikedetails.aspx?id=6">See Details</a>
      </div>
    </div>
  </div>
<div class="col-sm-3">
      <div class="card" width="10rem" height="500">
      <img src="imgs/bike7.jpg" class="card-img-top" height="365" alt="...">
      <div class="card-body"><h5 class="card-title">
        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
          </h5>
        <p class="card-text" style="color:crimson;margin-left:190px;font-weight:700;font-size:medium;"><asp:Label ID ="Label16" runat="server" Text="Label"></asp:Label> L.E</p>
        <a class="btn btn-primary" href="Bikedetails.aspx?id=7">See Details</a>
      </div>
    </div>
  </div>
</div>



</asp:Content>
