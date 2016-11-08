﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListAllUsersDelete.aspx.cs" Inherits="smartsociety.Admin.ListAllUsersDelete" %>

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
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Admin/Images/logo16.gif" Height="75px" Width="954px" />
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
                    	<p class="breadcrumb"><a href="Index.aspx">Home</a><a href="#"> Administration</a> <a href="#">User Management</a>View User</p>
                    	<span class="success" style="display:block;">User has been deleted Succesfully</span>
                        <h1>List All Users</h1>
                    	<p>This page is for users to list all user information.</p>
                        <form id="form1" name="form1" method="post" action="">
                        	<table class="dataTable">
                                <thead>
                                    <tr class="odd">
                                        <th class="column1"></th>
                                        <th>User ID</th>
                                        <th>Name</th>
                                        <th>Flat</th>
                                        <th>Email</th>
                                        <th>Role</th>
                                        <th class="column1">&nbsp;</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                      	<th class="column1" width="30px"> <input type="radio" name="radio" id="radio" class="radiobtn" value="radio" /></th>
                                      	<td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="column1"><a href="UserDetails.aspx">Details</a></td>
                                    </tr>
                                     <tr class="odd">
                                        <th class="column1"> <input type="radio" name="radio" id="radio" class="radiobtn" value="radio" /></th>
                                       	<td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="column1"><a href="UserDetails.aspx">Details</a></td>
                                    </tr>
                                    <tr>
                                        <th class="column1"> <input type="radio" name="radio" id="radio" class="radiobtn" value="radio" /></th>
                                      	<td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="column1"><a href="UserDetails.aspx">Details</a></td>
                                    </tr>
                                    <tr class="odd">
                                        <th class="column1"> <input type="radio" name="radio" id="radio" class="radiobtn" value="radio" /></th>
                                       	<td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="column1"><a href="UserDetails.aspx">Details</a></td>
                                    </tr>
                                    <tr>
                                        <th class="column1"> <input type="radio" name="radio" id="radio" class="radiobtn" value="radio" /></th>
                                      	<td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="column1"><a href="UserDetails.aspx">Details</a></td>
                                    </tr>
                                    <tr>
                                        <th class="column1"> <input type="radio" name="radio" id="radio" class="radiobtn" value="radio" /></th>
                                      	<td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="column1"><a href="UserDetails.aspx">Details</a></td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="7" align="right"><span class="pagination">Page: <a href="#" class="selected">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">Next</a></span></td>
                                    </tr>
                                </tfoot>
                            </table>
                       		<input name="CreateNew" type="button" class="primarybuttonl" onclick="MM_goToURL('parent', 'CreateUser.aspx'); return document.MM_returnValue" value="Create New" />
                            <input name="CreateNew" type="button" class="primarybuttonm" onclick="MM_goToURL('parent', 'EditUser.aspx'); return document.MM_returnValue" value="Edit" />
                          	<input name="CreateNew" class="primarybuttons" type="button" value="Delete" onclick="cnfrmtn = confirm('Do you want to delete this user?'); if (cnfrmtn) { window.location = 'ListAllUsersDelete.aspx'; }" />
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