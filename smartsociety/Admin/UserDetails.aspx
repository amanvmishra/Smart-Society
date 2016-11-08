﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="smartsociety.Admin.UserDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Smart Society</title>
        <link type="text/css" rel="stylesheet" href="Styles/General.css" />
        <link type="text/css" rel="stylesheet" href="Styles/Navigation.css" />
        <link type="text/css" rel="stylesheet" href="Styles/Themes.css" />
        <link type="text/css" rel="stylesheet" href="Styles/FormElements.css" />
		<script src="Scripts/dropdown.js" type="text/javascript"></script>
        <script type="text/javascript" src="Scripts/popCalendar.js"></script>
        <script src="Scripts/accordian.js" type="text/javascript" ></script>
        <script src="Scripts/General.js" type="text/javascript" ></script>
        <script src="Scripts/ClientInclude.js" type="text/javascript" ></script>
        <script type="text/javascript">
            function MM_goToURL() { //v3.0
                var i, args = MM_goToURL.arguments; document.MM_returnValue = false;
                for (i = 0; i < (args.length - 1) ; i += 2) eval(args[i] + ".location='" + args[i + 1] + "'");
            }
        </script>
</head>
<body>
    <form id="form1" runat="server">
      <div id="main">
        	<!--<div class="top-nav">Logged in as: Wen Chen | <a href="#">Logout</a></div>-->
            <div class="roundedcorners">
            	<div class="rndtl"></div><div class="rndc"></div><div class="rndtr"></div>
            </div>
            <div class="content-area">
            	<div id="header">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Admin/Images/logo16.gif" Height="75px" Width="956px" />
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
                    <div class="leftmenu">
                    	<ul>
							<li>User Management
								<ul>
									<li><a href="ListAllUsers.aspx">View User </a></li>
									<li><a href="CreateUser.aspx">Add User </a></li>
								</ul>
							</li>
						</ul>
                    </div>
                    <div class="maincolumn">
                    	<p class="breadcrumb"><a href="Index.aspx">Home</a><a href="#"> Administration</a> <a href="#">User Management</a><a href="#">View User</a>User Details</p>
                        <h1>User Details</h1>
                    	<p>This page is for users to see the detailed information about a particular user.</p>
                        </div>
                        	<table class="dataTable">
                            	<tbody>
                                	<tr>
                                    	<th class="column1" width="150px">User Name:</th>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr class="odd">
                                    	<th class="column1">First Name:</th>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                    	<th class="column1">Last Name:</th>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                    	<th class="column1">Flat:</th>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr class="odd">
                                    	<th class="column1">Email:</th>
                                      <td>
                                          <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                      <th class="column1">Roles:</th>
                                      <td>
                                          <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
							<input name="CreateNew" type="button" class="primarybuttons" onclick="MM_goToURL('parent', 'EditUser.aspx'); return document.MM_returnValue" value="Edit" />
                        	<input name="CreateNew" type="button" class="primarybuttons" onclick="MM_goToURL('parent', 'ListAllUsers.aspx'); return document.MM_returnValue" value="Back" />
                    	</form>
                   	</div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="roundedcorners">
            	<div class="rndbl"></div><div class="rndc"></div><div class="rndbr"></div>
            </div>
        </div>
        
        <!--	<a href="#">ABC.com</a> |
            <a href="#">Copyright</a> |
            <a href="#">Legal Disclaimer</a> |
            <a href="#">Change Password</a> |
            <a href="#">Site Help</a> |
            <a href="#">FAQ</a> |
            <a href="#">Sitemap</a>-->
		</div>
        <div id="footer"></div>
    </form>
</body>
</html>