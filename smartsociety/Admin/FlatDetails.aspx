<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FlatDetails.aspx.cs" Inherits="smartsociety.Admin.FlatDetails" %>

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
        	<div class="top-nav">Logged in as: <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label> |<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton> </div>
            <div class="roundedcorners">
            	<div class="rndtl"></div><div class="rndc"></div><div class="rndtr"></div>
            </div>
            <div class="content-area">
            	<div id="header">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Admin/Images/logo16.gif" Height="76px" Width="959px" />
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
 					<ul>	<li>Society
								<ul>
									<li>
                                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">View Society Details</asp:LinkButton>
                                         </li>
									<li>
                                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">View Flat Details</asp:LinkButton>                                      
                                       </li>
                                    <li>
                                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">View Common Rentals</asp:LinkButton>
                                       
                                        </li>
								</ul>
							</li>
						<ul>
                    </div>
                    <div class="maincolumn">
                    	<p class="breadcrumb"><a href="Index.aspx">Home</a><a href="#">Society</a><a href="#">Flat Details</a><a href="#">View Details</a>Details</p>
                        <h1>Flat Details.This page is for viewing selected flat details</h1>
                    	 </div>
                        	<table class="dataTable">
                            	<thead>
                                	<tr>
                                    	<th colspan="4" class="column1">Flat Information</th>
                                    </tr>
                                </thead>
                            	<tbody>
                                	<tr>
                                    	<th class="column1" width="150px">User ID:</th>
	                                    <td>
                                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <th class="column1" width="150px">Flat Number:</th>
	                                    <td>
                                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                	<tr>
                                    	<th class="column1">Block:</th>
	                                    <td>
                                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <th class="column1">Size:</th>
	                                    <td>
                                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                	<tr>
                                    	<th class="column1">Flat Type :</th>
	                                    <td>
                                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <th class="column1">&nbsp;</th>
	                                    <td>&nbsp;</td>
                                    </tr>
                                </tbody>
                            	<thead>
                                </thead>
                            	<tbody>
                                </tbody>
                            	<thead>
                                	<tr>
                                    	<th colspan="4" class="column1">Other Information</th>
                                    </tr>
                                </thead>
                            	<tbody>
                                	<tr>
                                    	<th class="column1" width="150px">Purchase Date:</th>
                                    <td width="150px">
                                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <th class="column1" width="150px">Owner</th>
                                      <td>
                                          <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr class="odd">
                                    	<th class="column1">Rented:</th>
                                        <td>
                                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <th class="column1">Rented To:</th>
                                        <td>
                                            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                    	<th class="column1">No of Family Member</th>
                                        <td>
                                            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <th class="column1">&nbsp;</th>
                                        <td>
                                            <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                      <tr>
                                    	<th class="column1">Water & Sewage Tax</th>
                                        <td>
                                            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                                          </td>
                                        <th class="column1">Property Tax</th>
                                        <td>
                                            <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                                          </td>
                                    </tr>
                                     <tr class="odd">
                                        <th class="column1">Total Maintenance</th>
                                        <td>
                                            <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                                         </td>
                                        <th class="column1">Next Due Date</th>
                                        <td>
                                            <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                                         </td>
                                    </tr>
                                </tbody>
                            </table>
                    <asp:Button ID="Button1" class="primarybuttons" runat="server" Text="Edit" />
                    <asp:Button ID="Button2" class="primarybuttons" runat="server" Text="Back" />
                  </form>
                   	</div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="roundedcorners">
            	<div class="rndbl"></div><div class="rndc"></div><div class="rndbr"></div>
            </div>
        </div>
        </div>-->
        <div id="footer"></div>
    </form>
</body>
</html>
