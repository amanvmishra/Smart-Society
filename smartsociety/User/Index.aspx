<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="smartsociety.User.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Smart Society</title>
        <link type="text/css" rel="stylesheet" href="Styles/General.css" />
        <link type="text/css" rel="stylesheet" href="Styles/Navigation.css" />
        <link type="text/css" rel="stylesheet" href="Styles/Themes.css" />
		<script src="Scripts/dropdown.js" type="text/javascript"></script>
		<script src="Scripts/ClientInclude.js" type="text/javascript" ></script>
</head>
<body>
    <form id="form1" runat="server">
  <div id="main">
        	<div class="top-nav">Logged in as: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> |<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton> </div>
            <div class="roundedcorners">
            	<div class="rndtl"></div><div class="rndc"></div><div class="rndtr"></div>
            </div>
            <div class="content-area">
            	<div id="header">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Admin/Images/logo16.gif" Height="74px" Width="954px" />
				</div>
                <div id="navbar">
                	<div class="navleft"></div>
					<span id="includeone">
                         <%		   
                             Response.WriteFile("main-menu.inc");
                            %>
					</span>
                    <div class="navright"></div>
                </div>
                <div class="contentbox">
                    <table width="100%">
                    	<tr>
                        	<td width="52%">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/User/Images/logo7.jpg" /></td>
                            <td width="48%">
                            	<span class="welcome">Hello!!<asp:Literal ID="Literal1" runat="server"></asp:Literal>
&nbsp;. Welcome to Smart Society System</span>
                                
                               </td>
                        </tr>
					</table>
                </div>
            </div>
            <div class="roundedcorners">
           	  <div class="rndbl"></div><div class="rndc"></div><div class="rndbr"></div>
            </div>
     </div>
		</div>
        <div id="footer"></div>
    </form>
</body>
</html>
