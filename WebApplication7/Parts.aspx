<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Parts.aspx.cs" Inherits="WebApplication7.Parts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<div class="row" height="100">
  <div class="col-sm-3">
    <div class="card"  width="10rem" height="1000" >
      <img src="imgs/part2.png" class="card-img-top" height="365" alt="...">
      <div class="card-body"> <h5 class="card-title">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
          </h5>
        <p class="card-text" style="color:crimson;margin-left:190px;font-weight:700;font-size:medium;"><asp:Label  ID="Label9" runat="server" Text="Label"></asp:Label> L.E</p>
            <a class="btn btn-primary" href="#">Add to Cart</a>
       
      </div>
    </div>
  </div>
  <div class="col-sm-3" >
      <div class="card"  width="10rem" height="1000">
      <img src="imgs/part1.png" class="card-img-top"  height="365" alt="...">
      <div class="card-body"><h5 class="card-title">
          <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
          </h5>
        <p class="card-text" style="color:crimson;margin-left:190px;font-weight:700;font-size:medium;"><asp:Label  ID="Label10" runat="server" Text="Label"></asp:Label> L.E</p>
        <a class="btn btn-primary" href="#" >Add to Cart</a>
      </div>
    </div>
  </div>
<div class="col-sm-3">
      <div class="card" width="10rem" height="1000">
      <img src="imgs/part3.png" class="card-img-top" height="365" alt="...">
      <div class="card-body"><h5 class="card-title">
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </h5>
        <p class="card-text" style="color:crimson;margin-left:190px;font-weight:700;font-size:medium;"><asp:Label  ID="Label11" runat="server" Text="Label"></asp:Label> L.E</p>
        <a class="btn btn-primary" href="#">Add to Cart</a>
      </div>
    </div>
  </div>
<div class="col-sm-3">
      <div class="card" width="10rem" height="500">
      <img src="imgs/part4.png" class="card-img-top" height="365" alt="...">
      <div class="card-body"><h5 class="card-title">
      <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
          </h5>
      <p class="card-text" style="color:crimson;margin-left:190px;font-weight:700;font-size:medium;"><asp:Label  ID="Label12" runat="server" Text="Label"></asp:Label> L.E</p>
        <a class="btn btn-primary" href="#">Add to Cart</a>
      </div>
    </div>
  </div>
</div>
</asp:Content>
