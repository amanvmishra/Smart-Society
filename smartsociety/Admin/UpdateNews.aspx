<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateNews.aspx.cs" Inherits="smartsociety.Admin.UpdateNews" %>

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
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Admin/Images/logo16.gif" Height="76px" Width="960px" />
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
							<li>Masters
								<ul>
									<li>
                                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Update News</asp:LinkButton>
                                        </li>
									<li>
                                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">View News</asp:LinkButton>
                                        </li>
                                    <li>
                                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Update Society News</asp:LinkButton>
                                        </li>

                                    <li>
                                        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">View Society News</asp:LinkButton>
                                        </li>
								</ul>
							</li>
						</ul>
                    </div>

                    <div class="maincolumn">
                    	<p class="breadcrumb"><a href="Index.html">Home</a><a href="#"> >News</a> <a href="#">All News</a>Update News</p>
                        <h1>Update News.This Page is for Admin for updating News</h1>
                        </div>
                        	<table class="dataTable">
                            	<tbody>
                                	<tr>
                                         <th class="column1">News ID</th>
                                        <td>
                                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                        </td>
                                    	<th class="column1" width="150px">News Type:</th>
                                        <td>
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem>Political</asp:ListItem>
                                                <asp:ListItem>Sports</asp:ListItem>
                                                <asp:ListItem>Bussiness</asp:ListItem>
                                                <asp:ListItem>Technical</asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                       
                                    </tr>
                                    <tr class="odd">
                                    	<th class="column1">Headline:</th>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="293px"></asp:TextBox>
                                        </td>
                                         <th class="column1">Date:</th>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                      <th class="column1">Description:</th>
                                      <td colspan="3">
                                          <asp:TextBox ID="TextBox3" runat="server" Height="130px" TextMode="MultiLine" Width="800px"></asp:TextBox>
                                        </td>
                                    </tr>
                                   
                                </tbody>
                            </table>
                            <asp:Button ID="Button1" class="primarybuttons" runat="server" Text="Update" OnClick="Button1_Click" />
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
        <div class="footertext">
		</div>
        <div id="footer"></div>
    </form>
</body>
</html>
