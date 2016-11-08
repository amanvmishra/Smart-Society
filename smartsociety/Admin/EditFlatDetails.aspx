<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditFlatDetails.aspx.cs" Inherits="smartsociety.Admin.EditFlatDetails" %>

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
        	<div class="top-nav">Logged in as: Wen Chen | <a href="#">Logout</a></div>
            <div class="roundedcorners">
            	<div class="rndtl"></div><div class="rndc"></div><div class="rndtr"></div>
            </div>
            <div class="content-area">
            	<div id="header">
                    <asp:Image ID="Image1" runat="server" Height="77px" ImageUrl="~/Admin/Images/logo16.gif" Width="957px" />
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
 						<span id="includetwo">
                              <%		   
                             Response.WriteFile("Apt-left-menu.inc");
                            %>
						</span>
 						</span>
                    </div>
                    <div class="maincolumn">
                    	<p class="breadcrumb"><a href="Index.aspx">Home</a><a href="#"> Administration</a> <a href="#">User Management</a><a href="#">View User</a>User Details</p>
                        <h1>Flat Details</h1>
                    	<p>This page is for users to see the detailed information about a particular Flat.</p>
                        <form id="form1" name="form1" method="post" action="">
                        	<table class="dataTable">
                            	<thead>
                                	<tr>
                                    	<th colspan="4" class="column1">Flat Information</th>
                                    </tr>
                                </thead>
                            	<tbody>
                                	<tr>
                                       	 <th class="column1" width="150px">User ID:</th>
                                    	 <td><input type="text" Value = "" name="textfield6" class=""  id="textfield6" /></td>
                                         <th class="column1" width="150px">Flat Number:</th>
                                    	 <td><input type="text" Value = "" name="textfield6" class=""  id="textfield6" /></td>
                                    </tr>
                                	<tr>
                                    	 <th class="column1">Size (Sqft): </th>
	                                     <td><input type="text" Value = "" name="textfield6" class=""  id="textfield6" /></td>
                                         <th class="column1">UDS  (Sqft):</th>
	                                     <td><input type="text" Value = "" name="textfield6" class=""  id="textfield6" /></td>
                                    </tr>
                                	<tr>
                                    	 <th class="column1">Balcony:</th>
	                                     <td>&nbsp;</td>
                                         <th class="column1">Garden Size:</th>
	                                     <td>&nbsp;</td>
                                    </tr>
                                	<tr>
                                    	 <th class="column1">Car Parking:</th>
	                                     <td>&nbsp;</td>
                                         <th class="column1">Penthouse:</th>
	                                     <td>&nbsp;</td>
                                    </tr>
                                </tbody>
                            	<thead>
                                	<tr>
                                    	<th colspan="4" class="column1">Owners Information</th>
                                    </tr>
                                </thead>
                            	<tbody>
                                	<tr>
                                    	<th class="column1" width="150px">Name:</th>
                                    <td width="150px">&nbsp;</td>
                                        <th class="column1" width="150px">Title:</th>
                                        <td>&nbsp;</td>
                                    </tr>
	                                <tr>
                                    	<th class="column1">Gender:</th>
                                        <td>&nbsp;</td>
                                        <th class="column1">Marital Status::</th>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr class="odd">
                                    	<th class="column1">Date of Birth:</th>
                                        <td>&nbsp;</td>
                                        <th class="column1">Total Family Members:</th>
                                        <td>&nbsp;</td>
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
                                    <td width="150px">&nbsp;</td>
                                        <th class="column1" width="150px">Mobile number:</th>
                                      <td>&nbsp;</td>
                                    </tr>
                                    <tr class="odd">
                                    	<th class="column1">Fax:</th>
                                        <td></td>
                                        <th class="column1">E-Mail:</th>
                                        <td>&nbsp;</td>
                                    </tr>
                                      <tr>
                                    	<th class="column1">Street:</th>
                                        <td>&nbsp;</td>
                                        <th class="column1">Unit:</th>
                                        <td>&nbsp;</td>
                                    </tr>
                                     <tr class="odd">
                                    	<th class="column1">Pincode:</th>
                                        <td>&nbsp;</td>
                                        <th class="column1">City:</th>
                                        <td>&nbsp;</td>
                                    </tr>
                                     <tr>
                                    	<th class="column1">State:</th>
                                        <td>&nbsp;</td>
                                        <th class="column1">Country:</th>
                                        <td>India</td>
                                    </tr>
                                </tbody>
                            </table>
							<input name="CreateNew" type="button" class="primarybuttons" onclick="cnfrmtn = confirm('Do you want to Edit?'); if (cnfrmtn) { window.location = 'EditMember.aspx'; }" value="Edit" />
                        	<input name="CreateNew" type="button" class="primarybuttons" onclick="MM_goToURL('parent', 'ListAllMembers.aspx'); return document.MM_returnValue" value="Cancel" />
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
            <a href="#">Sitemap</a>
		</div>-->
        <div id="footer"></div>
    </form>
</body>
</html>
