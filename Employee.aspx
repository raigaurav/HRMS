﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Employee.aspx.cs" Inherits="Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
     <br /><br />
   
    <asp:gridview ID="GridView1" Runat="server" AutoGenerateColumns="False" 
         
         BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        Height="112px" Width="689px" AutoGenerateEditButton="True" AutoGenerateDeleteButton="True"  OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" DataKeyNames="Employee_ID" >
        <Columns>
            
            <asp:BoundField DataField="Sr_No." HeaderText="Sr_No." SortExpression="Sr_No." ReadOnly="True" InsertVisible="False"/>
            <asp:BoundField DataField="Employee_ID" HeaderText="Employee_ID" SortExpression="Employee_ID" ReadOnly="True" />
            
        
           <asp:HyperLinkField DataNavigateUrlFields="Employee_ID" DataNavigateUrlFormatString="Personal.aspx?EmpID={0}" Target="_blank" ShowHeader="true" HeaderText="Name" DataTextField="Name" />
            
        
            <asp:BoundField DataField="Job_Title" HeaderText="Job_Title" SortExpression="Job_Title" />
            
        
            <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
            <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place" />
            <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
            
        
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
</asp:gridview>
    
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDatabase %>" SelectCommand="SELECT [Sr_No.], Employee_ID, [First_Name ] + ' ' + Last_Name AS Name, Job_Title, Department, Place, Experience FROM Personal" DeleteCommand="DELETE FROM Personal WHERE (Employee_ID = @Employee_ID)" UpdateCommand="UPDATE Personal SET Employee_ID = @Employee_ID, Job_Title = @Job_Title, Department = @Department, Place = @Place, Experience = @Experience WHERE Employee_ID=@Employee_ID">
        <DeleteParameters>
            <asp:Parameter Name="Employee_ID" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Employee_ID" />
            <asp:Parameter Name="Job_Title" />
            <asp:Parameter Name="Department" />
            <asp:Parameter Name="Place" />
            <asp:Parameter Name="Experience" />
        </UpdateParameters>
     </asp:SqlDataSource>
     
    
</asp:Content>
    
