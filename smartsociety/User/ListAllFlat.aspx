<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListAllFlat.aspx.cs" Inherits="smartsociety.User.ListAllFlat" %>

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
							<li>Society
								<ul>
									<li>
                                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">View Society Details</asp:LinkButton>
                                         </li>
									<li>
                                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">View Flat Details</asp:LinkButton>
                                       </li>
                                    <li>
                                        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">View Common Rentals</asp:LinkButton>
                                        </li>
								</ul>
							</li>
						</ul>	
                    </div>
                    <div class="maincolumn">
                    	<p class="breadcrumb"><a href="Index.aspx">Home</a><a href="#">Apartment</a><a href="#">Flat Details</a>View Details</p>
                        <h1>List All Flats</h1>
                    	<p>This page is for users to list all Flats information.</p>
                       <asp:GridView ID="GridView1"   class="datatable1" runat="server" Height="20px" Width="702px" AutoGenerateColumns="False" DataKeyNames="Flat_ID" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Flat_ID" HeaderText="Flat" SortExpression="Flat_ID" ReadOnly="True" />
                            <asp:BoundField DataField="Owner" HeaderText="Owner" SortExpression="Owner" />
                            <asp:BoundField DataField="Flat_Size" HeaderText="Size" SortExpression="Flat_Size" />
                            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                            <asp:BoundField  DataField="Block"  HeaderText="Block" SortExpression="Block" />
                         <asp:TemplateField>
                            <ItemTemplate>
                               <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Details</asp:LinkButton> 
                            </ItemTemplate>                                     
                        </asp:TemplateField>
                            
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
                            <input name="Cancel" type="button" class="primarybuttons" onclick="MM_goToURL('parent', 'Index.aspx'); return document.MM_returnValue" value="Back" /></form>
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
