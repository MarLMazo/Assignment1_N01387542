<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment1_N01387542_MarlMazo_5101B.aspx.cs" Inherits="Assignment1_N01387542_MarlMazo_5101B.Assignment1_N01387542_MarlMazo_5101B" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta charset="utf-8" />
        <title>SportsCar Review</title>
    </head>
    <body>
    <%--MARL DOHN MAZO N01387542 5103 Section B--%>
        <form id="form1" runat="server">
            <h1>Sports Car Review</h1>
            <section><!--Name of Reviewer-->
                <h2>Write Your Name</h2>
                <label>Name:</label>
                <asp:TextBox runat="server" ID="reviewer_Name" ></asp:TextBox>
            </section>
            <section>
                <h2>About Your Sports Car</h2>
                <div><!--SportsCar Brand-->
                    <label>Choose the Sports Car</label>
                    <asp:DropDownList runat="server" ID="sportsCar_Brand">
                        <asp:ListItem Text="Bugatti" Value="bugatti"></asp:ListItem>
                        <asp:ListItem Text="Ferrari" Value="ferrari"></asp:ListItem>
                        <asp:ListItem Text="Lamborghini" Value="lamborghini"></asp:ListItem>
                        <asp:ListItem Text="Mazda" Value="mazda"></asp:ListItem>
                        <asp:ListItem Text="Porche" Value="porche"></asp:ListItem>
                        <asp:ListItem Text="Mercedes" Value="mercedes"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div><!--SportsCar Model-->
                    <label>Sports Car Model:</label>
                    <asp:TextBox runat="server" ID="sportsCar_Model"></asp:TextBox>
                </div>
                <div><!--SportsCar Year-->
                    <label>Sports Car Year</label>
                    <asp:DropDownList runat="server" ID="sportsCar_Year">
                        <asp:ListItem Text="2019" Value="2019"></asp:ListItem>
                        <asp:ListItem Text="2018" Value="2018"></asp:ListItem>
                        <asp:ListItem Text="2017" Value="2017"></asp:ListItem>
                        <asp:ListItem Text="2016" Value="2016"></asp:ListItem>
                        <asp:ListItem Text="2015" Value="2015"></asp:ListItem>
                        <asp:ListItem Text="2014 And Below" Value="2014_Older"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div><!--SportsCar Color-->
                    <label>What is the color of your Car?</label>
                    <asp:RadioButtonList runat="server" ID="sportsCar_Color">
                        <asp:ListItem Text="Red" Value="red"></asp:ListItem>
                        <asp:ListItem Text="White" Value="white"></asp:ListItem>
                        <asp:ListItem Text="Black" Value="black"></asp:ListItem>
                        <asp:ListItem Text="Yellow" Value="yellow"></asp:ListItem>
                        <asp:ListItem Text="Other Color" Value="other_Color"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </section>
            <section>
                <div><!--Overall Rating-->
                    <h2>Overall Rating</h2>
                    <asp:RadioButtonList runat="server" ID="reviewer_Overall">
                        <asp:ListItem Text="5 Stars" value="5star"></asp:ListItem>
                        <asp:ListItem Text="4 Stars" Value="4star"></asp:ListItem>
                        <asp:ListItem Text="3 Stars" Value="3star"></asp:ListItem>
                        <asp:ListItem Text="2 Stars" Value="2star"></asp:ListItem>
                        <asp:ListItem Text="1 Star" Value="1star"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div><!--Written Review-->
                    <h2>Add a Written Review</h2>
                    <label>What did you like or dislike about the car?</label>
                    <div>
                        <asp:TextBox TextMode="MultiLine" ID="reviewer_Review" runat="server" Columns="50" Rows="10"></asp:TextBox>
                    </div>
                </div>
                <div><!--Main point-->
                    <h2> Main point of Review</h2>
                    <asp:CheckBoxList ID="reviewer_MainPoint" runat="server">
                        <asp:ListItem Text="Interior" Value="interior"></asp:ListItem>
                        <asp:ListItem Text="Exterior" Value="exterior"></asp:ListItem>
                        <asp:ListItem Text="Reliability" Value="reliability"></asp:ListItem>
                        <asp:ListItem Text="Cargo Space" Value="cargospace"></asp:ListItem>
                        <asp:ListItem Text="Performance" Value="performance"></asp:ListItem>
                        <asp:ListItem Text="Safety" Value="safety"></asp:ListItem>
                        <asp:ListItem Text="Cost" Value="cost"></asp:ListItem>
                        <asp:ListItem Text="Efficiency" Value="efficiency"></asp:ListItem>
                    </asp:CheckBoxList>
                </div>
                <div><!--Title Review-->
                    <h2>Add a Title</h2>
                    <div>
                        <label>Sum up your review in one line</label>
                    </div>
                    <asp:TextBox placeholder="What's Important to Know?" ID="reviewer_TitleReview" runat="server" Columns="100"></asp:TextBox>
                </div>
            </section>
            <asp:Button Text="Submit" runat="server" />
        </form>
    </body>
</html>
