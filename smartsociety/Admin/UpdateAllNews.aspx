<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateAllNews.aspx.cs" Inherits="smartsociety.Admin.UpdateCityNews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Mphasis LMS</title>
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
    <style type="text/css">
        .auto-style1 {
            width: 449px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div id="main">
        	<div class="top-nav">Logged in as: David | <a href="#">Logout</a></div>
            <div class="roundedcorners">
            	<div class="rndtl"></div><div class="rndc"></div><div class="rndtr"></div>
            </div>
            <div class="content-area">
            	<div id="header">
                	<a href="Index.html" class="logo"><img src="Images/Cigna_Logo.jpg" title="MphasiS Logo" /></a>
                	<a href="#" class="logo1"><img src="Images/LMS_Logo.jpg" title="LMS Logo" /></a>
				</div>
                 <div id="navbar">
                	<div class="navleft"></div>
					<span id="includeone"></span>
                    <div class="navright"></div>
                </div>
                <div class="contentbox">
                    <div class="leftmenu">
                    	<ul>
							<li>Masters
								<ul>
									<li><a href="ListAllMasters.html">View Masters</a></li>
									<li><a href="CreateMasters.html">Add Masters</a></li>
									<li><a href="ListAllFeedFormats.html">Feed Format</a></li>
									<li><a href="ListAllFeedSch.html">Schedule Feed Upload</a></li>
								</ul>
							</li>
						</ul>
                    </div>

                    <div class="maincolumn">
                    	<p class="breadcrumb"><a href="Index.html">Home</a><a href="#"> Administration</a> <a href="#">Masters</a>Add Masters</p>
                        <h1>Add Master</h1>
                    	<p>
                        	This page is for Creating Master information.
                        </p>
                        </div>
                        	<table class="dataTable">
                            	<tbody>
                                	<tr>
                                    	<th class="column1" width="150px">News Type:</th>
                                        <td class="auto-style1">
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem>Political</asp:ListItem>
                                                <asp:ListItem>Bussiness</asp:ListItem>
                                                <asp:ListItem>Technological</asp:ListItem>
                                                <asp:ListItem>Sports</asp:ListItem>
                                                <asp:ListItem>Defence</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <th class="column1" width="150px">Date:</th>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr class="odd">
                                    	<th>Headlines:</th>
                                        <td class="auto-style1">
                                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                      <th class="column1">Description:</th>
                                      <td class="auto-style1">
                                          <textarea id="TextArea2" name="S2"></textarea></td>
                                    </tr>
                              
                                </tbody>
                            </table>
							<input name="CreateNew" type="button" class="primarybuttons" onclick="cnfrmtn = confirm('Do you want to Add this Master?'); if (cnfrmtn) { window.location = 'CreateMastersSuccess.html'; }" value="Add" />
                        	<input name="CreateNew" type="button" class="primarybuttons" onclick="MM_goToURL('parent', 'ListAllMasterss.html'); return document.MM_returnValue" value="Back" />
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
        	<a href="#">MphasiS.com</a> |
            <a href="#">Copyright</a> |
            <a href="#">Legal Disclaimer</a> |
            <a href="#">Change Password</a> |
            <a href="#">Site Help</a> |
            <a href="#">FAQ</a> |
            <a href="#">Sitemap</a>
		</div>
        <div id="footer"></div>
    </form>
</body>
</html>
