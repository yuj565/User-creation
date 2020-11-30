<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExpenseReportHome.aspx.cs" Inherits="A2ExpenseReporting.ExpenseReportHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="scripts/jquery-3.3.1.min.js"></script>

    <title>UserCreation</title>
     <!-- Title of the website-->
</head>
<body>
    <div class="container">
    <div class="table-responsive">
    <form id="form1" runat="server">
    <h1>User Creation</h1>
   
    <%--My 7*3 table--%>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                User Type</td>
                <td><asp:DropDownList ID="ddlExpenseType" runat="server">
                    <%--Create my DropDownList with a meaningful name--%>
                    <asp:ListItem>Business</asp:ListItem>
                    <asp:ListItem>Individuals</asp:ListItem>
                    <%--ListItems--%>
                    </asp:DropDownList></td>
                <td><asp:RequiredFieldValidator ID="rfvExpenseType" runat="server" ErrorMessage="Please select your User type." Display="Dynamic" ControlToValidate="ddlExpenseType" ForeColor="Red"></asp:RequiredFieldValidator></td>
                <%--Create my RequiredFieldValidator with a meaningful name for my DropDownList--%>
            </tr>
            <tr>
                <td class="auto-style2">Birth Data</td>
                <td><asp:TextBox ID="tboxExpenseData" runat="server"></asp:TextBox></td>
                <%--Create my TextBox with a meaningful name for my Expense Data--%>
                <td><asp:RequiredFieldValidator ID="rfvExpenseData" runat="server" ErrorMessage="Please enter your Birth data." Display="Dynamic" ControlToValidate="tboxExpenseData" ForeColor="Red"></asp:RequiredFieldValidator>
                    <%--Create my RequiredFieldValidator with a meaningful name for my TextBox--%>
                    <asp:RangeValidator ID="rvExpenseData" runat="server" ErrorMessage="Please check if the dates range between 1/1/1900 and the current date. " ControlToValidate="tboxExpenseData"  ForeColor="Red" MaximumValue="Today" MinimumValue="1/1/18" Display="Dynamic"></asp:RangeValidator>
                    <%--Create my RangeValidator with a meaningful name for my TextBox--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Personal Description</td>
                <td><asp:TextBox ID="tboxExpenseDescription" runat="server"></asp:TextBox></td>
                <%--Create my TextBox with a meaningful name for my Expense Description--%>
                <td><asp:RequiredFieldValidator ID="rfvExpenseDescription" runat="server" ErrorMessage="Please enter your Personal description." Display="Dynamic" ControlToValidate="tboxExpenseDescription" ForeColor="Red"></asp:RequiredFieldValidator></td>
                <%--Create my RequiredFieldValidator with a meaningful name for my TextBox--%>
            </tr>
            <tr>
                <td class="auto-style2">Monthly income</td>
                <td><asp:TextBox ID="tboxExpenseAmount" runat="server"></asp:TextBox></td>
                <%--Create my TextBox with a meaningful name for my Expense Amount--%>
                <td><asp:RequiredFieldValidator ID="rfvExpenseAmount" runat="server" ErrorMessage="Please enter your Monthly income." Display="Dynamic" ControlToValidate="tboxExpenseAmount" ForeColor="Red"></asp:RequiredFieldValidator>
                    <%--Create my RequiredFieldValidator with a meaningful name for my TextBox--%>
                    <asp:CompareValidator ID="cvExpenseAmount" runat="server" Operator="DataTypeCheck" Type="Currency" ErrorMessage="Only currency is accepted" ControlToValidate="tboxExpenseAmount" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                    <%--Create my CompareValidator with a meaningful name for my TextBox--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">SUMMARY</td>
                <td><asp:Label ID="lblSUMMARY" runat="server" Text=""></asp:Label></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"><asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" /></td>
                <%--Create my Submit button with a meaningful name--%>
                <td><asp:Button ID="BtnClear" runat="server" Text="Clear" OnClick="BtnClear_Click" /></td>
                <%--Create my Clear button with a meaningful name--%>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
   
    
    </form>
    </div>
    </div>
</body>
</html>


