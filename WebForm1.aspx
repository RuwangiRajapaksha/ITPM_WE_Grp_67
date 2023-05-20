<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="dilini.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        
        Home

    </title>
    <style>
        body {
             font-family: Arial;
              margin: 0;

            }

        .container {
      width: 960px;
      margin: 0 auto;
      padding: 20px;
      background-color: #ffffff;
    }

    h1 {
      font-size: 70px;
      font-weight: bold;
      color:  #ffffff;
      margin-top: 0;
    }

    .panel {
      margin-bottom: 20px;
    }

    .panel-title {
      font-size: 18px;
      font-weight: bold;
      color: #333333;
      margin-top: 0;
      margin-bottom: 10px;
    }

    .panel-content {
      background-color: #f9f9f9;
      padding: 10px;
      border: 1px solid #cccccc;
      border-radius: 4px;
            height: 53px;
            margin-left: 95px;
            width: 1371px;
        }

    .panel-content p {
      margin: 0;
    }

    .button {
      display: inline-block;
      padding: 10px 20px;
      background-color: #007bff;
      color: #ffffff;
      text-decoration: none;
      border-radius: 4px;
      transition: background-color 0.3s ease;
            width: 202px;
        }

    .button:hover {
      background-color: #0056b3;
    }

    div {
  
  color: white;
}






        .auto-style1 {
            height: 53px;
        }






        .auto-style2 {
            margin-left: 0px;
        }






        .auto-style3 {
            background-color: #f9f9f9;
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            height: 53px;
            margin-left: 95px;
            width: 1260px;
        }






    </style>
    
</head>
<body style="background-image: url('image/2.jpg'); no-repeat center center fixed" >


     <div style="background-color:black;" >
         <br>
         <br>
         <br>
   <center> <h1>&nbsp;&nbsp; Event Organizeation</h1></center>

   
         <center>
    <div>    
      <div class="auto-style3" align="right" style="background-color: #808080">
         <a href="WebForm1.aspx" class="button" style="background-color: #008080"><center>Home</center></a>
         <a href="WebForm2.aspx" class="button" style="background-color: #008080"><center>Event</center></a>
         <a href="WebForm3.aspx" class="button" style="background-color: #008080"><center>Data table </center></a>
          <a href="#" class="button" style="background-color: #008080"><center>About</center></a>
      </div>
    </div>
  </div>
    </center>





    <form id="form1" runat="server">
        <div align="center">

            <br />
            <br />
            <br />
            <br />
            
            <center>
                &nbsp;<table align="center" style="width: 605px" opacity: 0.2>
                    <tr>
                        <td>Name : </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Width="305px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>

                    <tr>
                        <td>Code Number : </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Width="304px"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td></td>
                    </tr>

                    <tr>
                        <td>Event Type : </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style2" Height="31px" Width="307px">
                                <asp:ListItem>Birthdaya</asp:ListItem>
                                <asp:ListItem>Function</asp:ListItem>
                                <asp:ListItem>wedding</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>

                    <tr>
                        <td></td>
                    </tr>

                    <tr>
                        <td>Date : </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Width="305px" type="date" ></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td></td>
                    </tr>

                    <tr>
                        <td>Upload image : </td>
                        <td> <input type ="file" name="uploadfile" /> </td>
                    </tr>

                    <tr>
                        <td>&nbsp;</td>
                    </tr>

                    <tr>
                        <td class="auto-style1">
                           
                        <td class="auto-style1">
                            <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" ondblclick="myFunction" Width="119px" />
                            <tab></tab>
                            <asp:Button ID="Button2" runat="server" Text="Delet" OnClick="Button2_Click" Width="119px" />
                            <tab></tab>
                            <asp:Button ID="Button4" runat="server" Text="Clear" Width="105px" style="margin-left: 0px"/>
                        </td>
                        
                    </tr>

                      <tr>
                        <td>
                            &nbsp;</td>
                    </tr>

                </table>
                </center>


        </div>
    </form>

    



</body>
</html>
