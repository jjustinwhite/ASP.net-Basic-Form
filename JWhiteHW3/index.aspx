<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="JWhiteHW3.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Justin White's Webform</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="Style/main.css" type="text/css">
</head>
<body>

    <form id="form1" class="form" runat="server">
    <asp:Label ID="lblError" runat="server" BackColor="Red"></asp:Label><br />
    <div class="container well form-group">
        <asp:Panel runat="server" ID="pnlForm" Visible="true">
            <div class=" col-sm-offset-1 col-sm-10">
            <div class="page-header"><h1>Welcome to the Webstore Form</h1></div>
            
            <h3>Contact Info</h3>

           <div class="form-group"><label>First Name:</label> <asp:TextBox ID="txtFirstName" CssClass="form-control" runat="server" AutoCompleteType="FirstName"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="valFirstName"
                                            runat="server" 
                                            ControlToValidate="txtFirstName" 
                                            ErrorMessage="First Name is Required." 
                                            ForeColor="Red" 
                                            EnableClientScript="true"></asp:RequiredFieldValidator>
           </div>

           <div class="form-group"><label>Last Name:</label> <asp:TextBox ID="txtLastName" CssClass="form-control" runat="server" AutoCompleteType="LastName"></asp:TextBox>
                <asp:RequiredFieldValidator ID="valLastName"
                                            runat="server" 
                                            ControlToValidate="txtLastName" 
                                            ErrorMessage="Last Name is Required." 
                                            ForeColor="Red" 
                                            EnableClientScript="true"></asp:RequiredFieldValidator>
          </div>

            <div class="form-group"><label>Home Street Address:</label><asp:TextBox ID="txtHomeStreetAddress" CssClass="form-control" runat="server" AutoCompleteType="HomeStreetAddress"></asp:TextBox>
                <asp:RequiredFieldValidator ID="valHomeStreetAddress"
                                            runat="server" 
                                            ControlToValidate="txtHomeStreetAddress" 
                                            ErrorMessage="Home Address is Required." 
                                            ForeColor="Red" 
                                            EnableClientScript="true"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group"><label>City:</label> <asp:TextBox ID="txtHomeCity" CssClass="form-control" runat="server" AutoCompleteType="HomeCity"></asp:TextBox>
                <asp:RequiredFieldValidator ID="valHomeCity"
                                            runat="server" 
                                            ControlToValidate="txtHomeCity" 
                                            ErrorMessage="Home City is Required." 
                                            ForeColor="Red" 
                                            EnableClientScript="true"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group"><label>State:</label><asp:DropDownList ID="drpHomeState" CssClass="form-control" runat="server"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="valHomeState"
                                            runat="server" 
                                            ControlToValidate="drpHomeState" 
                                            ErrorMessage="Home State is Required." 
                                            ForeColor="Red" 
                                            EnableClientScript="true"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group"><label>Email:</label><asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" AutoCompleteType="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="valEmail"
                                            runat="server" 
                                            ControlToValidate="txtEmail" 
                                            ErrorMessage="A Valid Email Address is Required." 
                                            ForeColor="Red" 
                                            EnableClientScript="true"></asp:RequiredFieldValidator>
            </div>

            <h3>Login Info</h3>

            <div class="form-group"><label>Username: </label><asp:TextBox ID="txtUsername" CssClass="form-control" runat="server" AutoCompleteType="DisplayName"></asp:TextBox>
                <asp:RequiredFieldValidator ID="valUsername"
                                            runat="server" 
                                            ControlToValidate="txtUsername" 
                                            ErrorMessage="Username is Required." 
                                            ForeColor="Red" 
                                            EnableClientScript="true"></asp:RequiredFieldValidator>
            </div>

           <div class="form-group"><label>Password: </label> <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" AutoCompleteType="None" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="valPassword"
                                            runat="server" 
                                            ControlToValidate="txtPassword" 
                                            ErrorMessage="Password is Required." 
                                            ForeColor="Red" 
                                            EnableClientScript="true"></asp:RequiredFieldValidator>
            </div>
            
            <div class="form-group"><label>Password Confirmation:</label> <asp:TextBox ID="txtPasswordConfirmation" CssClass="form-control" runat="server" AutoCompleteType="None" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="valPasswordConfirmation"
                                            runat="server" 
                                            ControlToValidate="txtPasswordConfirmation" 
                                            ErrorMessage="Password Confirmation is Required." 
                                            ForeColor="Red" 
                                            EnableClientScript="true"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="valComparePasswords"
                                      runat="server"
                                      ControlToCompare="txtPassword"
                                      ControlToValidate="txtPasswordConfirmation"
                                      ErrorMessage="Passwords Do Not Match."
                                      ForeColor="Red"
                                      EnableClientScript="true"></asp:CompareValidator>
            </div>

            <h3>Other Info</h3>

            <label>Gender: </label>
            <div class="radio container"> <asp:RadioButtonList ID="lstGender" CssClass="radio" runat="server">
                                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                <asp:ListItem Text="Prefer Not to Say" Value="n/a"></asp:ListItem>
                          </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="valGender"
                                            runat="server"
                                            ControlToValidate="lstGender"
                                            ErrorMessage="Must Select a Gender Option"
                                            ForeColor="Red"
                                            EnableClientScript="true"></asp:RequiredFieldValidator>

            </div>

            <div class="form-group"><label>Age: </label> <asp:DropDownList ID="drpAge" CssClass="form-control" runat="server"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="valAge"
                                            runat="server" 
                                            ControlToValidate="drpAge" 
                                            ErrorMessage="Age is Required." 
                                            ForeColor="Red" 
                                            EnableClientScript="true"></asp:RequiredFieldValidator>
            </div><br />

            <label>Sign up for our newsletter? (We promise we won't spam you, or sell your email)</label>
            <div class="radio container"> <asp:RadioButtonList ID="lstEmailSubscription" CssClass="radio"  runat="server">
                                <asp:ListItem Text="Yes, sign me up!" Value="yes"></asp:ListItem>
                                <asp:ListItem Text="No emails please." Value="No"></asp:ListItem>
                          </asp:RadioButtonList>

            </div>

                    <h3>Education Info</h3>

            <label>Are you currently a student? </label>
            <div class="radio container"><asp:RadioButtonList ID="lstStudent" CssClass="radio" runat="server">
                                          <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                                          <asp:ListItem Text="No" Value="no"></asp:ListItem>
                                       </asp:RadioButtonList>
                 <asp:RequiredFieldValidator ID="valStudent"
                                            runat="server" 
                                            ControlToValidate="lstStudent" 
                                            ErrorMessage="Student Status is Required." 
                                            ForeColor="Red" 
                                            EnableClientScript="true"></asp:RequiredFieldValidator>
            </div>

            <label>Level of Education: </label> 
            <div class="radio container"><asp:RadioButtonList ID="lstEducation" CssClass="radio" runat="server">
                                <asp:ListItem Text="Highschool" Value="HS"></asp:ListItem>
                                <asp:ListItem Text="Associate's Degree" Value="Associate"></asp:ListItem>
                                <asp:ListItem Text="Bachelor's Degree " Value="Bachelor"></asp:ListItem>
                                <asp:ListItem Text="Master's Degree" Value="Masters"></asp:ListItem>
                                <asp:ListItem Text="Other" Value="Other"></asp:ListItem>  
                          </asp:RadioButtonList>
                 <asp:RequiredFieldValidator ID="valEducation"
                                            runat="server" 
                                            ControlToValidate="lstEducation" 
                                            ErrorMessage="Education Level is Required." 
                                            ForeColor="Red" 
                                            EnableClientScript="true"></asp:RequiredFieldValidator>

            </div>

            <asp:Button ID="btnSubmit" CssClass="btn btn-primary" Text="Submit" runat="server" onClick="btnSubmit_Click" /> <br />
                <br />
           </div>
        </asp:Panel>

        <asp:Panel ID="pnlFormResults" runat="server" Visible="false">
            <h2>Thank You!</h2>
            You Entered:<br />
            First Name: <asp:Label ID="lblFirstNameEntered" runat="server" ></asp:Label><br />
            Last Name: <asp:Label ID="lblLastNameEntered" runat="server" ></asp:Label><br />
            Home Street Address: <asp:Label ID="lblHomeStreetAddressEntered" runat="server"></asp:Label><br />
            City: <asp:Label ID="lblCityEntered" runat="server" ></asp:Label><br />
            State: <asp:Label ID="lblStateEntered" runat="server" ></asp:Label><br />
            Email: <asp:Label ID="lblEmailEntered" runat="server" ></asp:Label><br />
            Username: <asp:Label ID="lblUsernameEntered" runat="server" ></asp:Label><br /><br />

            Gender: <asp:Label ID="lblGenderEntered" runat="server" ></asp:Label><br />
            Age: <asp:Label ID="lblAgeEntered" runat="server" ></asp:Label><br /><br />

            Newsletter: <asp:Label ID="lblEmailSubscriptionEntered" runat="server" ></asp:Label><br />
            Student: <asp:Label ID="lblStudentEntered" runat="server" ></asp:Label><br />
            Level of Education: <asp:Label ID="lblEducationEntered" runat="server" ></asp:Label><br />



            
        </asp:Panel>
    </div>
    </form>
</body>
</html>
