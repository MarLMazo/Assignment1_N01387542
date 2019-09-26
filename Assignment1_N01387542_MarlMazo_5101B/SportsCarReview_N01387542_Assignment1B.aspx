<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SportsCarReview_N01387542_Assignment1B.aspx.cs" Inherits="Assignment1_N01387542_MarlMazo_5101B.SportsCarReview_N01387542_Assignment1B" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SportsCar Review</title>
</head>
<body>
    <%--MARL DOHN MAZO N01387542 5103 Section B--%>
    <%--Reference for Regular Expression found on https://www.regular-expressions.info/reference.html and https://docs.microsoft.com/en-us/dotnet/standard/base-types/regular-expressions and Determining the in-class example to be able to create own validationexpression--%>
        <form id="form1" runat="server">
            <h1>Sports Car Review</h1>
            <section><!--About the Reviewer-->
                <h2>About You</h2>
                <div>
                    <label>Name:</label>
                    <asp:TextBox runat="server" ID="reviewer_Name" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please Enter Your Name" ControlToValidate="reviewer_Name"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <label>Email Address:</label>
                    <asp:TextBox runat="server" ID="reviewer_EmailAddress" placeHolder="ex.example@example.com"></asp:TextBox>                    
                    <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="reviewer_EmailAddress" ValidationExpression="\w+([-+_.%]\w+)*@\w+([-.]\w+)*.\w([-.]\w+)*" ErrorMessage="Please Enter a Valid Email Address"></asp:RegularExpressionValidator>
                    <div>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="reviewer_EmailAddress" ErrorMessage="Please Enter a Valid Email Address"></asp:RequiredFieldValidator>
                    </div>
                </div>                                                                                                                              
            </section>
            <section>
                <h2>About Your Sports Car</h2>
                <div><!--SportsCar Brand-->
                    <label>Choose the Sports Car</label>
                    <asp:DropDownList runat="server" ID="sportsCar_Brand">
                        <asp:ListItem Text="--Select--" Value=""></asp:ListItem>
                        <asp:ListItem Text="Bugatti" Value="bugatti"></asp:ListItem>
                        <asp:ListItem Text="Ferrari" Value="ferrari"></asp:ListItem>
                        <asp:ListItem Text="Lamborghini" Value="lamborghini"></asp:ListItem>
                        <asp:ListItem Text="Mazda" Value="mazda"></asp:ListItem>
                        <asp:ListItem Text="Porche" Value="porche"></asp:ListItem>
                        <asp:ListItem Text="Mercedes" Value="mercedes"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="sportsCar_Brand" ErrorMessage="Please Select Your Car"></asp:RequiredFieldValidator>
                </div>
                <div><!--SportsCar Model-->
                    <label>Sports Car Model:</label>
                    <asp:TextBox runat="server" ID="sportsCar_Model"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="sportsCar_Model" ErrorMessage="Please Put a Model of the Car"></asp:RequiredFieldValidator>
                </div>
                <div><!--SportsCar Year-->
                    <label>Sports Car Year</label>
                    <asp:DropDownList runat="server" ID="sportsCar_Year">
                        <asp:ListItem Text="--Select--" Value=""></asp:ListItem>
                        <asp:ListItem Text="2019" Value="2019"></asp:ListItem>
                        <asp:ListItem Text="2018" Value="2018"></asp:ListItem>
                        <asp:ListItem Text="2017" Value="2017"></asp:ListItem>
                        <asp:ListItem Text="2016" Value="2016"></asp:ListItem>
                        <asp:ListItem Text="2015" Value="2015"></asp:ListItem>
                        <asp:ListItem Text="2014 And Below" Value="2014_Older"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="sportsCar_Year" ErrorMessage="Please Select a Year Model"></asp:RequiredFieldValidator>
                </div>
                <div><!--SportsCar Seat-->
                    <label>How many seats does your sportscar have?</label>
                    <asp:TextBox runat="server" ID="sportsCar_Seat"></asp:TextBox>                    
                    <asp:RangeValidator runat="server" EnableClientScript="true" ControlToValidate="sportsCar_Seat" MinimumValue="1" MaximumValue="4" ErrorMessage="Please Enter a Valid Seat Number"></asp:RangeValidator>
                    <div>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="sportsCar_Seat" ErrorMessage="Please Enter a Valid Seat Number"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div><!--SportsCar Price-->
                    <label>How much did you pay for your sportsCar</label>
                    <asp:TextBox runat="server" ID="sportsCar_Price"></asp:TextBox>                    
                    <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="sportsCar_Price" ValidationExpression="[$$]?[0-9]*,?[0-9]{2,3},?[0-9]{3}" ErrorMessage="Please Enter A Valid Price. Maximum Price is $99,999,999"></asp:RegularExpressionValidator>
                    <div>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="sportsCar_Price" ErrorMessage="Please Put a Price of you Sports Car"></asp:RequiredFieldValidator>
                    </div>
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
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="sportsCar_Color" ErrorMessage="Please Select a Color"></asp:RequiredFieldValidator>
                </div>
            </section>
            <section>              
                <div><!--Written Review-->
                    <h2>Add a Written Review</h2>
                    <label>What did you like or dislike about the car?</label>
                    <div>
                        <asp:TextBox TextMode="MultiLine" ID="reviewer_Review" runat="server" Columns="50" Rows="10"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableToClientScript="true" ControlToValidate="reviewer_Review" ErrorMessage="Please Add Your Review"></asp:RequiredFieldValidator>
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
                    <asp:TextBox ID="reviewer_TitleReview" runat="server"  placeholder="What's Important to Know?" Columns="100"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="reviewer_TitleReview" ErrorMessage="Please Give a Title"></asp:RequiredFieldValidator>
                </div>
            </section>
            <section>
                <asp:ValidationSummary runat="server" ShowSummary="true"/>
                <asp:Button Text="Submit" runat="server" />
                <div runat="server" id="box_Results"></div>
            </section>
        </form>
 </body>
</html>
