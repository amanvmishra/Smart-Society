<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="smartsociety.SignUp" %>

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
            <div class="roundedcorners">
            	<div class="rndtl"></div><div class="rndc"></div><div class="rndtr"></div>
            </div>
            <div class="content-area">
            	<div id="header">
                	
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/logo16.gif" Height="73px" Width="958px" />
				</div>
                <div id="navbar">
                	<div class="navleft"></div>
                    <div></div>
                    <div class="navright"></div>
                </div>
                <div class="contentbox">
					</div>
						<table width="100%">
							<tr>
								<td width="42%">
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/logo7.jpg" /></td>
								<td width="58%">
									<span class="error">
                                   &nbsp;&nbsp;&nbsp;     <h1>&nbsp;&nbsp;&nbsp; Sign Up</h1>
                                        &nbsp;&nbsp;
									</span>
									<table class="dataTable">
										<tbody>
											<tr>
                                    	<th class="column1" width="150px">User ID:</th>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr class="odd">
                                    	<th class="column1">Name:</th>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                    	<th class="column1">Password:</th>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server" EnableTheming="True" AutoPostBack="False" TextMode="Password"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                    	<th class="column1">Flat:</th>
                                        <td>
                                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr class="odd">
                                    	<th class="column1">Email:</th>
                                      <td>
                                          <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                   <tr>
                                    	<th class="column1">Type:</th>
                                        <td>
                                            <asp:DropDownList ID="DropDownList2" runat="server">
                                                <asp:ListItem>Owner</asp:ListItem>
                                                <asp:ListItem>Renter</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
											<tr class="odd">
												<th colspan="2" class="column1">
                                                    <asp:Button ID="Button1" class="primarybuttons" runat="server" Text="SignUp" OnClick="Button1_Click" /></th>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</table>
					</form>
                </div>
            </div>
            <div class="roundedcorners">
           	  <div class="rndbl"></div><div class="rndc"></div><div class="rndbr"></div>
            </div>
        </div>
        
        <div id="footer"></div>
    </form>
</body>
</html>
