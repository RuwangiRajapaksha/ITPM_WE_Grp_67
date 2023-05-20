<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="dilini.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data Table</title>
    <style>

         h1 {
      font-size: 70px;
      font-weight: bold;
      color:  #ffffff;
      margin-top: 0;
    }

         p {
      font-size: 24px;
      font-weight: bold;
      color:  #ffffff;
      margin-top: 0;
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

    
    </style>
</head>
<body style="background-image: url('image/2.jpg'); no-repeat center center fixed" >
    <center> <h1>&nbsp;&nbsp; Event Organizeation</h1>
         <a href="WebForm1.aspx" class="button" style="background-color: #008080"><center>Home</center></a>
         </center>
    <form id="form1" runat="server">
        <div>

            <br>
            <div>
                </div>
            
        </div>

    </form>
    <div>
        <br>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="o_id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="o_id" HeaderText="o_id" ReadOnly="True" SortExpression="o_id"></asp:BoundField>
                <asp:BoundField DataField="o_name" HeaderText="o_name" SortExpression="o_name"></asp:BoundField>
                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type"></asp:BoundField>
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="Data Source=LAPTOP-IDQLNRRJ;Initial Catalog=event;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT DISTINCT [o_id], [o_name], [type], [Date] FROM [organize]"></asp:SqlDataSource>

        </div>
</body>
</html>
