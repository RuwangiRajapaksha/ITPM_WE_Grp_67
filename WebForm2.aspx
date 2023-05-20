<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="dilini.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        information
    </title>

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
        .auto-style1 {
            width: 500px;
            height: 350px;
        }
        .auto-style2 {
            width: 356px;
        }
        .auto-style3 {
            width: 372px;
        }
        .auto-style4 {
            width: 500px;
            height: 506px;
        }
        .auto-style5 {
            width: 500px;
            height: 469px;
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

            <table align="center" style="width: 605px" opacity: 0.2>
                <tr>
                    <td> <img src="image/B.jpg" alt="Girl in a jacket" class="auto-style1"><td>
                    <td class="auto-style2"><P class="auto-style3"> A birthday party is much more than a simple blowing out of candles. It is a combination of delicious food, good music and of course, good times! We are dedicated in making your birthday a memorable one by delivering a personalized experience.</p></td>
                    </tr>
                <tr>
                    <td> <img src="image/h.jpg" alt="Girl in a jacket" class="auto-style5"><td>
                    <td class="auto-style2"><P><h>Wedding Events</h><br><br>
                        Award Winning Destination Wedding Planner and Event Designer in Venice and Italy. Claudia Carrara Is a Boutique Wedding Planner in Venice and Italy. Luxury Full Wedding. Wedding planner. Iconic Moments. Venice and Italy Wedding.</p></td>
                    </tr>
                <tr>
                    <td> <img src="image/284.jpg" alt="Girl in a jacket" class="auto-style4"><td>
                    <td class="auto-style2"><P> <h>Function</h><br><br id="dd">function party is much more than a simple blowing out of candles. It is a combination of delicious food, good music and of course, good times! We are dedicated in making your birthday a memorable one by delivering a personalized experience.</p></td>
                    </tr>
                
                </table>



        </div>
    </form>
</body>
</html>
