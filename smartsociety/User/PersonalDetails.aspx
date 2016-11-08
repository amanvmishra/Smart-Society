<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalDetails.aspx.cs" Inherits="smartsociety.User.Personal_Details" %>

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
        	<div class="top-nav">Logged in as: <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label> |<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton> </div>
            <div class="roundedcorners">
            	<div class="rndtl"></div><div class="rndc"></div><div class="rndtr"></div>
            </div>
            <div class="content-area">
            	<div id="header">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Admin/Images/logo16.gif" Height="75px" Width="957px" />
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
							<li>My Details
								<ul>
									<li><a href="PersonalDetails.aspx">View Details</a></li>
								</ul>
							</li>
							<li>Flat Details
								<ul>
									<li><a href="#">View Details</a></li>
								</ul>
							</li>
							<li>Payment
								<ul>
									<li><a href="#">View Payment</a></li>
									<li><a href="#">Add Payment Details</a></li>
								</ul>
							</li>
						</ul>
                    </div>
                    <div class="maincolumn">
                    	<p class="breadcrumb"><a href="Index.aspx">Home</a><a href="#">My Portfolio</a><a href="#">My Details</a>View Details</p>
                        <h1>My Details</h1>
                    	<p>This page is for users to view their Personal and Contact information.</p>
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
                                        <th class="column1" style="width: 154px">Flat Number:</th>
	                                    <td>
                                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                </tbody>
                            	<thead>
                                	<tr>
                                    	<th colspan="4" class="column1">Personal Information</th>
                                    </tr>
                                </thead>
                            	<tbody>
                                	<tr>
                                    	<th class="column1" width="150px">Title:</th>
                                    <td width="150px">
                                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <th class="column1" style="width: 154px">&nbsp;</th>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr class="odd">
                                    	<th class="column1">First Name:</th>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <th class="column1" style="width: 154px">Last Name:</th>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                    	<th class="column1">Gender:</th>
                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <th class="column1" style="width: 154px">Marital Status::</th>
                                        <td>
                                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr class="odd">
                                    	<th class="column1">Date of Birth:</th>
                                      <td>
                                          <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                </tbody>
                            	<thead>
                                	<tr>
                                    	<th colspan="4" class="column1">Contact Information</th>
                                    </tr>
                                </thead>
                            	<tbody>
                                	<tr>
                                    	<th class="column1" width="150px">Contact Number:</th>
                                    <td width="150px">
                                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <th class="column1" style="width: 154px">Mobile number:</th>
                                      <td>
                                          <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr class="odd">
                                    	<th class="column1">E-Mail:</th>
                                        <td>
                                            <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <th class="column1" style="width: 154px">&nbsp;</th>
                                        <td>&nbsp;</td>
                                    </tr>
                                      <tr>
                                    	<th class="column1">Street:</th>
                                        <td>
                                            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                                          </td>
                                        <th class="column1" style="width: 154px">Locality:</th>
                                        <td>
                                            <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                                          </td>
                                    </tr>
                                     <tr class="odd">
                                    	<th class="column1">Pincode:</th>
                                        <td>
                                            <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                                         </td>
                                        <th class="column1" style="width: 154px">City:</th>
                                        <td>
                                            <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                                         </td>
                                    </tr>
                                     <tr>
                                    	<th class="column1">State:</th>
                                        <td>
                                            <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                                         </td>
                                        <th class="column1" style="width: 154px">Country:</th>
                                        <td>India</td>
                                    </tr>
                                </tbody>
                            </table>
                    <asp:Button ID="Button1" class="primarybuttons" runat="server" Text="Edit" />
                    <asp:Button ID="Button2" class="primarybuttons" runat="server" Text="Back" OnClick="Button2_Click" />
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
            <a href="#">Privacy statement</a> |
            <a href="#">Site Help</a> |
            <a href="#">FAQ</a> |
            <a href="#">Sitemap</a>-->
		</div>
        <div id="footer"></div>
    </form>
</body>
</html>
