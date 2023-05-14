<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebApplication7.Profile" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>  
    <title>Profile</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 
</head>
<body>
    <form id="form1" runat="server">
    <div class="jumbotron" >  
     <div style="margin-left:1000px;">
       <p style="font-size:34px; margin-left:-10px;"> Profile Page</p>
       <asp:Label runat="server" ID="nameLabel" Font-Size="XX-Large" Font-Bold="True" ForeColor="Blue"></asp:Label>
       <b></b>     
      </div>
     </div>
   
     <div class="container" id="edit" style="padding:5px; ">
      <br/>
      <div style="background-color:aliceblue" class="row">
       <div style="margin-left:100px;">
        <h2 style="font-size:30px; color:blue; margin-top:35px;"><b>Username</b></h2>
        <asp:Label runat="server" ID="usernameLabel" Font-Size="X-Large"></asp:Label>
       </div>
       <button type="button" class="btn btn-primary" style="margin-left:800px; margin-top:-95px;" id="editUserName">Change username</button>
      </div>
      <br/><br/>

      <div style="background-color:aliceblue" class="row">
       <div style="margin-left:100px;">
        <h2 style="font-size:30px; color:blue; margin-top:35px;"><b>Email</b></h2>
        <asp:Label runat="server" ID="emailLabel" Font-Size="X-Large"></asp:Label>
       </div>
       <button type="button" class="btn btn-primary" style="margin-left:100px;margin-top:15px;" id="editEmail">Change email</button>
               
       <div style="margin-top:-130px; margin-left:700px;">
        <div style="margin-left:100px;">
         <h2 style="font-size:30px; color:blue; margin-top:-80px; "><b>Password</b></h2>
         <asp:Label runat="server" ID="passwordLabel" Font-Size="X-Large"></asp:Label>
        </div>
        <button type="button" class="btn btn-primary" id="editPassword" style="margin-left:100px; margin-top:17px;">Change password</button>
       </div>
       <br /><br />
      </div>

      <br/><br/>

      <div style="background-color:aliceblue" class="row">
       <div style="margin-left:100px;">
        <h2 style="font-size:30px; color:blue; margin-top:35px;"><b>Mobile Phone</b></h2>
        <asp:Label runat="server" ID="mobileLabel" Font-Size="X-Large"></asp:Label>
       </div>
       <button type="button" class="btn btn-primary" style="margin-left:800px;margin-top:-100px;" id="editMobile">Change mobile</button>
      </div>

      <br/><br/>
      <div style="background-color:aliceblue" class="row">
       <div style="margin-left:100px;">
        <h2 style="font-size:30px; color:blue; margin-top:35px;"><b>Address</b></h2>
        <asp:Label runat="server" ID="addressLabel" Font-Size="X-Large"></asp:Label>
       </div>
       <button type="button" class="btn btn-primary" style="margin-left:800px;margin-top:-100px;" id="editAddress">Change address</button>
      </div>

      <br/><br/>
      <div style="background-color:aliceblue" class="row">
       <br />
       <h2 style="font-size:30px; color:blue;margin-left:60px; margin-top:15px;"><b>Credit Card Number</b></h2>
       <div style="margin-left:100px;">
        <asp:Label runat="server" ID="creditnumLabel" Font-Size="X-Large"></asp:Label>
       </div>
       <button type="button" class="btn btn-primary" style="margin-left:110px; margin-top:15px;" id="editCreditNum">Change credit number</button>

       <div style="margin-top:-95px; margin-left:600px;">
        <div style="margin-left:100px;">
         <h2 style="font-size:30px; color:blue;margin-left:50px;  margin-top:-130px;"><b>Credit Card Password</b></h2>
         <asp:Label runat="server" ID="creditpassLabel" Font-Size="X-Large"></asp:Label>
        </div>
        <button type="button" class="btn btn-primary" style="margin-left:190px;margin-top:15px;" id="editCreditPass" >Change credit password</button>
       </div>
       <br />
      </div>

      <br/><br/>
      <div style="background-color:aliceblue" class="row">
       <div style="margin-left:100px;">
        <h2 style="font-size:30px; color:blue; margin-top:35px;"><b>Rent Requests</b></h2>
       </div> 
       <div style="margin-left:40px;">
        <asp:ListBox runat="server" ID="rentRequestsList"></asp:ListBox>
       </div>
      </div>
     </div>
                   
    </form>
</body>
</html>