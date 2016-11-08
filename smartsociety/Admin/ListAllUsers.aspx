<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListAllUsers.aspx.cs" Inherits="smartsociety.Admin.ListAllUsers" %>

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
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Admin/Images/logo16.gif" Height="77px" Width="960px" />
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
									<li>
                                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">View User</asp:LinkButton></li>
									<li>
                                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Add User</asp:LinkButton></li>
                                    <li>
                                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">New SignUp</asp:LinkButton></li>
								</ul>
							</li>
						</ul>
                    </div>
                    <div class="maincolumn">
                    	<p class="breadcrumb"><a href="Index.aspx">Home</a><a href="#"> Administration</a> <a href="#">User Management</a></p>
                        <h1>List All Users.This page is for users to list all user information.</h1>
               </div>     
                     <div>   <asp:GridView ID="GridView1"   class="datatable1" runat="server" Height="20px" Width="702px" AutoGenerateColumns="False" DataKeyNames="UserID" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
                        <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                 <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" CssClass="checkbx" />
                            </ItemTemplate>
                                     <HeaderStyle Width="5px" />
                                     <ItemStyle Width="10px" />
                        </asp:TemplateField>
                                <asp:BoundField DataField="UserID" HeaderText="User ID" ReadOnly="True" SortExpression="UserID" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Flat" HeaderText="Flat" SortExpression="Flat" />
                                <asp:BoundField DataField="Mail_Address" HeaderText="Email" SortExpression="Mail_Address" />
                                <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                                <asp:HyperLinkField NavigateUrl="UserDetails.aspx" Text="DETAILS" />
                            </Columns>

                        <EditRowStyle BackColor="#2461BF"  />
                        <FooterStyle BackColor="#f4f9fe" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#0067ac" Font-Bold="True"  ForeColor="White" CssClass="dataTable" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#f7fbff" Height="35px" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />

                    </asp:GridView>
                                                                                     
                </div>          
                                             
                    <div>
                           <asp:Button ID="Button1" class="primarybuttonl" runat="server" Text="Create New" />
                           <asp:Button ID="Button2" class="primarybuttonl" runat="server" Text="Edit" OnClick="Button2_Click" /> 
                           <asp:Button ID="Button3" class="primarybuttonl" runat="server" Text="Delete" OnClick="Button3_Click" />
                    </div>
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
