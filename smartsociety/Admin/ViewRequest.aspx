<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewRequest.aspx.cs" Inherits="smartsociety.Admin.ViewRequest" %>

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
        	<div class="top-nav">Logged in as: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> |<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton> </div>
            <div class="roundedcorners">
            	<div class="rndtl"></div><div class="rndc"></div><div class="rndtr"></div>
            </div>
            <div class="content-area">
            	<div id="header">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Admin/Images/logo16.gif" Height="77px" Width="958px" />
				</div>
                 <div id="navbar">
                	<div class="navleft"></div>
					<span id="includeone"> <%		   
                             Response.WriteFile("main-menu.inc");
                            %></span>
                    <div class="navright"></div>
                </div>
                <div class="contentbox">
                    <div class="leftmenu">
                    	<ul>
							<li>Service Request
								<ul>
									<li>
                                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Requested Service List</asp:LinkButton></li>
								
								</ul>
							</li>
						</ul>
                    </div>

                    <div class="maincolumn">
                    	<p class="breadcrumb"><a href="Index.html">Home</a><a href="#"> Service Request</a> <a href="#">Service Request</a>View Request Details</p>
                        <h1>View Request Details</h1>
                    	<p>
                        	This page is for 
                            Viewing request details of a selected User.
                        </p>
                        </div>
                        	<table class="dataTable">
                            	<tbody>
                                	<tr>
                                         <th class="column1">Maintenance ID :</th>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    	<th class="column1" width="150px">User ID :</th>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <th class="column1">Date:</th>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                        </td>
                                       
                                    </tr>
                                    <tr class="odd">
                                    	<th class="column1">Subject:</th>
                                        <td colspan="2">
                                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                        </td>
                                         <th class="column1">Status:</th>
                                        <td colspan="2">
                                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                        </td>
                                         
                                    </tr>
                                    <tr>
                                      <th class="column1" colspan="1">Description:</th>
                                      <td colspan="5">
                                          <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                   
                                </tbody>
                            </table>
                            </form>
                   	</div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="roundedcorners">
            	<div class="rndbl"></div><div class="rndc"></div><div class="rndbr"></div>
            </div>
        </div>
        <div class="footertext">
		</div>
        <div id="footer"></div>
    </form>
</body>
</html>
