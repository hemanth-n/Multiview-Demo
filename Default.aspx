<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 263px">
    
        <br />
        <br />
        <br />
        <br />
        <asp:MultiView  ID="MultiView1"  ActiveViewIndex="0" runat="server">
            <asp:View ID="View1"   runat="server">  
                <center><h2><i>  Welcome to Multiview Wizard. </i></h2></center>
                <br />
                <center><b>
                <asp:Button ID="Button1" runat="server"  CommandArgument="View2" 
                    CommandName ="SwitchViewByID"  BackColor="Orange" Text="Go to Next Page" Width="145px" />
                <asp:Button ID="Button4" runat="server" CommandArgument="View3" 
                     CommandName="SwitchViewByID"  BackColor="Orange" Text="Go to Last Page" style="margin-left: 320px" />
                   </b> </center>
                </asp:View> 
             <asp:View ID="View2" runat="server"> <center><h2><i> You are directed to the middle page </i></h2></center><br /> <br />
                 <center>
               <asp:Button ID="Button2" runat="server" CommandArgument="View1" 
                   CommandName="SwitchViewByID"   Text="Go to First page"  />
                 <asp:Button ID="Button5" runat="server" CommandArgument="View3" 
                   CommandName="SwitchViewByID"   Text="Go to Last page" style="margin-left: 320px" />
                 </center> </asp:View>
                <asp:View ID="View3" runat="server"> <center><h2><i>This is the end of the page</i></h2></center><br />  <br />
                    <center> 
                         <asp:Button ID="Button3" runat="server"  CommandArgument="View1" 
                           CommandName="SwitchViewByID"  BackColor="Green"  Text="Go to First Page" />
                    <asp:Button ID="Button6" runat="server" CommandArgument="View2" 
                           CommandName="SwitchViewByID"   BackColor="Green" Text="Go to Middle Page" style="margin-left: 320px" />
                        <center></asp:View>                                    
        </asp:MultiView>
    
    </div>
    </form>
</body>
</html>
