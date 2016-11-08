<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AptDetailsEdit.aspx.cs" Inherits="smartsociety.Admin.AptDetailsEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Society</title>
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
        	<div class="top-nav"></div>
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
						
                    </div>
                    <div class="maincolumn">
                    	<p class="breadcrumb"><a href="Index.aspx">Home</a><a href="#">Apartment</a><a href="#">Details</a><a href="#">View Details</a>Edit Details</p>
                        <h1>Apartment Details</h1>
                    	<p>This page is for users to view Apartment Details.</p>
                        </div>
                        	<table class="dataTable">
                            	<thead>
                                	<tr>
                                    	<th colspan="4" class="column1">Society Information</th>
                                    </tr>
                                </thead>
                            	<tbody>
                                	<tr>
                                    	<th class="column1" width="150px">Society ID:</th>
	                                    <td>
                                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <th class="column1" width="150px">Society Name</th>
	                                    <td>
                                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr class="odd">
                                    	<th class="column1">Started Date:</th>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <th class="column1">Completed Date:</th>
                                        <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                            <img src="Images/calendar-icon.gif" width="16" height="14" align="top"  onclick="displayDatePicker('dob')" style="cursor:pointer" /></td>
                                    </tr>
                                    <tr>
                                        <th class="column1">No of Blocks </th>
                                        <td>
                                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                        </td>
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
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                          </td>
                                        <th class="column1" width="150px">Locality:</th>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                          </td>
                                    </tr>
                                     <tr class="odd">
                                    	<th class="column1">Pincode:</th>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                         </td>
                                        <th class="column1">City:</th>
                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                         </td>
                                    </tr>
                                     <tr>
                                    	<th class="column1">State:</th>
                                        <td>
                                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                         </td>
                                        <th class="column1">Country:</th>
                                        <td>India</td>
                                    </tr>
                                </tbody>
                            </table>


                        	<table class="dataTable">
                            	<thead>
                                	<tr>
                                    	<th colspan="4" class="column1">Other Information</th>
                                    </tr>
                                </thead>
                            	<tbody>
                                    <tr class="odd">
                                    	<th class="column1">Total Sqft:</th>
                                        <td>
                                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                        </td>
                                        <th class="column1">No of Flats</th>
                                        <td>
                                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                    	<th class="column1">Urban Tax:</th>
                                        <td>
                                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                        </td>
                                        <th class="column1">Total Maintenance</th>
                                        <td>
                                            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                    <asp:Button ID="Button1" class="primarybuttons" runat="server" Text="Update" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" class="primarybuttons" runat="server" Text="Cancel" />
                    	</form>
                   	</div>
                    <div class="clear"></div>
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
