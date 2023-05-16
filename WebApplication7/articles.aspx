<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="articles.aspx.cs" Inherits="WebApplication7.articles" EnableViewState="true" %>
<%@ Import Namespace="System.Data.SqlClient" %> 

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <link rel="stylesheet" href="css/StyleSheet3.css" />
    <div class="article-container">
        <asp:Repeater runat="server" ID="ArticlesRepeater">
            <ItemTemplate>
                <div class="article-card">
                    <h2><%# Eval("Title") %></h2>
                    <p><%# Eval("Content") %></p>
                    <div class="comment">
                        <asp:TextBox ID="comment" runat="server" placeholder="Add a comment"></asp:TextBox>
                        <asp:Button runat="server" Text="Add Comment" OnClick="btnAddComment_Click" CommandArgument='<%# Eval("ArticleId") %>' />
                    </div>
                    <h3>Comments</h3>
                    <ul class="comment-list">
                        <asp:Repeater runat="server" DataSource='<%# Eval("Comments") %>'>
                            <ItemTemplate>
                                <li><%# Container.DataItem %></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <br>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
