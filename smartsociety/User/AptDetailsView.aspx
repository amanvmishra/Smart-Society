<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AptDetailsView.aspx.cs" Inherits="smartsociety.User.AptDetailsView" %>

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
        	  <div class="top-nav">Logged in as: <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label> |<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton> </div>
            <div class="roundedcorners">
            	<div class="rndtl"></div><div class="rndc"></div><div class="rndtr"></div>
            </div>
            <div class="content-area">
            	<div id="header">
                    <asp:Image ID="Image1" runat="server" Height="76px" ImageUrl="~/Admin/Images/logo16.gif" Width="958px" />
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
							<li>Society
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
						</ul>
                    </div>
                    <div class="maincolumn">
                    	<p class="breadcrumb"><a href="Index.aspx">Home</a><a href="#">Society</a><a href="#">Details</a>View</p>
                        <h1>&nbsp;Society Details</h1>
                    	<p>This page is for users to view Apartment Details.</p>
                        </div>
                      <div>  	<table class="dataTable">
                            	<thead>
                                	<tr>
                                    	<th colspan="4" class="column1">Society Information</th>
                                    </tr>
                                </thead>
                            	<tbody>
                                	<tr>
                                    	<th class="column1" width="150px">Society ID:</th>
	                                    <td width="200px">
                                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <th class="column1" width="150px">Society Name</th>
	                                    <td width="200px">
                                            <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr class="odd">
                                    	<th class="column1">Started Date:</th>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <th class="column1">Completed Date:</th>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="column1">No of Blocks:</th>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <th class="column1">&nbsp;</th>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr class="odd">
                                    	<th class="column1">&nbsp;</th>
                                        <td>&nbsp;</td>
                                    </tr>
                                </tbody>
                            </table>
                            <table class="dataTable">
                            	<thead>
                                	<tr>
                                    	<th colspan="4" class="column1">Address Information</th>
                                    </tr>
                                </thead>
                            	<tbody>
                                      <tr>
                                    	<th class="column1" width="150px">Address:</th>
                                        <td width="200px">
                                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                          </td>
                                        <th class="column1" width="150px">Locality:</th>
                                        <td width="200px">
                                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                          </td>
                                    </tr>
                                     <tr class="odd">
                                    	<th class="column1">Pincode:</th>
                                        <td>
                                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                         </td>
                                        <th class="column1">City:</th>
                                        <td>
                                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                                         </td>
                                    </tr>
                                     <tr>
                                    	<th class="column1">State:</th>
                                        <td>
                                            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                                         </td>
                                        <th class="column1">Country:</th>
                                        <td>India</td>
                                    </tr>
                                </tbody>
                            </table>


                        	<table class="dataTable">
                            	<thead>
                                	<tr>
                                    	<th colspan="4" class="column1">&nbsp;Other Information</th>
                                    </tr>
                                </thead>
                            	<tbody>
                                	<tr>
                                    	<th class="column1" width="150px">Total Sqft:</th>
                                    	<td width="200px">
                                            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <th class="column1" width="150px">No of Flat:</th>
                                        <td width="200px">
                                            <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr class="odd">
                                    	<th class="column1">Urban Tax:</th>
                                        <td>
                                            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <th class="column1">Total Maintenance</th>
                                        <td>
                                            <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                    	<th class="column1">&nbsp;</th>
                                        <td>&nbsp;</td>
                                        <th class="column1">&nbsp;</th>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr class="odd">
                                    	<th class="column1">&nbsp;</th>
                                        <td>&nbsp;</td>
                                    </tr>
                                </tbody>
                            </table></div>
                    <asp:Button ID="Button2" class="primarybuttons" runat="server" Text="Back" OnClick="Button2_Click" />
                     
                    	</form>
                   	</div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="roundedcorners">
            	<div class="rndbl"></div><div class="rndc"></div><div class="rndbr"></div>
            </div>
    <!--    </div>
        
        	<a href="#">ABC.com</a> |
            <a href="#">Copyright</a> |
            <a href="#">Legal Disclaimer</a> |
            <a href="#">Privacy statement</a> |
            <a href="#">Site Help</a> |
            <a href="#">FAQ</a> |
            <a href="#">Sitemap</a>
		</div> -->
        <div id="footer"></div>
 
    </form>
</body>
</html>
