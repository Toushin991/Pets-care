<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Prescription.aspx.cs" Inherits="Prescription" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        60 Holloway Road </br>
    
        N7 1BB</p>
    <h2 style="font-weight: bold">
        PRESCRIPTION</h2>
    <p style="font-weight: bold">
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="PRESCRIPTION_ID" DataSourceID="Presdetails" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="PRESCRIPTION_ID" HeaderText="ID" ReadOnly="True" SortExpression="PRESCRIPTION_ID" />
                <asp:TemplateField HeaderText="PATIENT NAME" SortExpression="PATIENT_NAME">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource8" DataTextField="PETNAME" DataValueField="PETNAME" SelectedValue='<%# Bind("PATIENT_NAME") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PATIENT_NAME") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("PATIENT_NAME") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PATIENT TYPE" SortExpression="PATIENT_TYPE">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource9" DataTextField="PETTYPE" DataValueField="PETTYPE" SelectedValue='<%# Bind("PATIENT_TYPE") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PATIENT_TYPE") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("PATIENT_TYPE") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OWNER" SortExpression="OWNER">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList9" runat="server" DataSourceID="SqlDataSource10" DataTextField="OWNERNAME" DataValueField="OWNERNAME" SelectedValue='<%# Bind("OWNER") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("OWNER") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("OWNER") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OWNER ADDRESS" SortExpression="CUSTOMER_ADDRESS">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList10" runat="server" DataSourceID="SqlDataSource11" DataTextField="OWNERADDR" DataValueField="OWNERADDR" SelectedValue='<%# Bind("CUSTOMER_ADDRESS") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CUSTOMER_ADDRESS") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("CUSTOMER_ADDRESS") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PRESCRIPTION BY" SortExpression="PRESCRIPTION_BY">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList11" runat="server" DataSourceID="SqlDataSource12" DataTextField="NAME" DataValueField="NAME" SelectedValue='<%# Bind("PRESCRIPTION_BY") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("PRESCRIPTION_BY") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("PRESCRIPTION_BY") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="Presdetails" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT &quot;PRESCRIPTION_ID&quot;, &quot;PATIENT_NAME&quot;, &quot;PATIENT_TYPE&quot;, &quot;OWNER&quot;, &quot;CUSTOMER_ADDRESS&quot;, &quot;PRESCRIPTION_BY&quot; FROM &quot;TBL_PRESCRIPTION&quot; WHERE (&quot;PRESCRIPTION_ID&quot; = :PRESCRIPTION_ID)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM &quot;TBL_PRESCRIPTION&quot; WHERE &quot;PRESCRIPTION_ID&quot; = :original_PRESCRIPTION_ID AND &quot;PATIENT_NAME&quot; = :original_PATIENT_NAME AND &quot;PATIENT_TYPE&quot; = :original_PATIENT_TYPE AND &quot;OWNER&quot; = :original_OWNER AND &quot;CUSTOMER_ADDRESS&quot; = :original_CUSTOMER_ADDRESS AND &quot;PRESCRIPTION_BY&quot; = :original_PRESCRIPTION_BY" InsertCommand="INSERT INTO &quot;TBL_PRESCRIPTION&quot; (&quot;PRESCRIPTION_ID&quot;, &quot;PATIENT_NAME&quot;, &quot;PATIENT_TYPE&quot;, &quot;OWNER&quot;, &quot;CUSTOMER_ADDRESS&quot;, &quot;PRESCRIPTION_BY&quot;) VALUES (:PRESCRIPTION_ID, :PATIENT_NAME, :PATIENT_TYPE, :OWNER, :CUSTOMER_ADDRESS, :PRESCRIPTION_BY)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE &quot;TBL_PRESCRIPTION&quot; SET &quot;PATIENT_NAME&quot; = :PATIENT_NAME, &quot;PATIENT_TYPE&quot; = :PATIENT_TYPE, &quot;OWNER&quot; = :OWNER, &quot;CUSTOMER_ADDRESS&quot; = :CUSTOMER_ADDRESS, &quot;PRESCRIPTION_BY&quot; = :PRESCRIPTION_BY WHERE &quot;PRESCRIPTION_ID&quot; = :original_PRESCRIPTION_ID AND &quot;PATIENT_NAME&quot; = :original_PATIENT_NAME AND &quot;PATIENT_TYPE&quot; = :original_PATIENT_TYPE AND &quot;OWNER&quot; = :original_OWNER AND &quot;CUSTOMER_ADDRESS&quot; = :original_CUSTOMER_ADDRESS AND &quot;PRESCRIPTION_BY&quot; = :original_PRESCRIPTION_BY">
            <DeleteParameters>
                <asp:Parameter Name="original_PRESCRIPTION_ID" Type="Decimal" />
                <asp:Parameter Name="original_PATIENT_NAME" Type="String" />
                <asp:Parameter Name="original_PATIENT_TYPE" Type="String" />
                <asp:Parameter Name="original_OWNER" Type="String" />
                <asp:Parameter Name="original_CUSTOMER_ADDRESS" Type="String" />
                <asp:Parameter Name="original_PRESCRIPTION_BY" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PRESCRIPTION_ID" Type="Decimal" />
                <asp:Parameter Name="PATIENT_NAME" Type="String" />
                <asp:Parameter Name="PATIENT_TYPE" Type="String" />
                <asp:Parameter Name="OWNER" Type="String" />
                <asp:Parameter Name="CUSTOMER_ADDRESS" Type="String" />
                <asp:Parameter Name="PRESCRIPTION_BY" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="PRESCRIPTION_ID" PropertyName="SelectedValue" Type="Decimal" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="PATIENT_NAME" Type="String" />
                <asp:Parameter Name="PATIENT_TYPE" Type="String" />
                <asp:Parameter Name="OWNER" Type="String" />
                <asp:Parameter Name="CUSTOMER_ADDRESS" Type="String" />
                <asp:Parameter Name="PRESCRIPTION_BY" Type="String" />
                <asp:Parameter Name="original_PRESCRIPTION_ID" Type="Decimal" />
                <asp:Parameter Name="original_PATIENT_NAME" Type="String" />
                <asp:Parameter Name="original_PATIENT_TYPE" Type="String" />
                <asp:Parameter Name="original_OWNER" Type="String" />
                <asp:Parameter Name="original_CUSTOMER_ADDRESS" Type="String" />
                <asp:Parameter Name="original_PRESCRIPTION_BY" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p style="font-weight: bold">
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT &quot;DRUG&quot;, &quot;DOSAGE&quot;, &quot;PERIOD&quot;, &quot;LENGTH_OF_COURSE&quot;, &quot;COST&quot; FROM &quot;TBL_PRESCRIPTION&quot; WHERE (&quot;PRESCRIPTION_ID&quot; = :PRESCRIPTION_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="PRESCRIPTION_ID" PropertyName="SelectedValue" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p style="font-weight: bold">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource7">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Label ID="DRUGLabel" runat="server" Text='<%# Eval("DRUG") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DOSAGELabel" runat="server" Text='<%# Eval("DOSAGE") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PERIODLabel" runat="server" Text='<%# Eval("PERIOD") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LENGTH_OF_COURSELabel" runat="server" Text='<%# Eval("LENGTH_OF_COURSE") %>' />
                    </td>
                    <td>
                        <asp:Label ID="COSTLabel" runat="server" Text='<%# Eval("COST") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:TextBox ID="DRUGTextBox" runat="server" Text='<%# Bind("DRUG") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DOSAGETextBox" runat="server" Text='<%# Bind("DOSAGE") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PERIODTextBox" runat="server" Text='<%# Bind("PERIOD") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="LENGTH_OF_COURSETextBox" runat="server" Text='<%# Bind("LENGTH_OF_COURSE") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="COSTTextBox" runat="server" Text='<%# Bind("COST") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="DRUGTextBox" runat="server" Text='<%# Bind("DRUG") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DOSAGETextBox" runat="server" Text='<%# Bind("DOSAGE") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PERIODTextBox" runat="server" Text='<%# Bind("PERIOD") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="LENGTH_OF_COURSETextBox" runat="server" Text='<%# Bind("LENGTH_OF_COURSE") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="COSTTextBox" runat="server" Text='<%# Bind("COST") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Label ID="DRUGLabel" runat="server" Text='<%# Eval("DRUG") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DOSAGELabel" runat="server" Text='<%# Eval("DOSAGE") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PERIODLabel" runat="server" Text='<%# Eval("PERIOD") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LENGTH_OF_COURSELabel" runat="server" Text='<%# Eval("LENGTH_OF_COURSE") %>' />
                    </td>
                    <td>
                        <asp:Label ID="COSTLabel" runat="server" Text='<%# Eval("COST") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server">DRUG</th>
                                    <th runat="server">DOSAGE</th>
                                    <th runat="server">PERIOD</th>
                                    <th runat="server">LENGTH_OF_COURSE</th>
                                    <th runat="server">COST</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Label ID="DRUGLabel" runat="server" Text='<%# Eval("DRUG") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DOSAGELabel" runat="server" Text='<%# Eval("DOSAGE") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PERIODLabel" runat="server" Text='<%# Eval("PERIOD") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LENGTH_OF_COURSELabel" runat="server" Text='<%# Eval("LENGTH_OF_COURSE") %>' />
                    </td>
                    <td>
                        <asp:Label ID="COSTLabel" runat="server" Text='<%# Eval("COST") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    </p>
    <h2 style="font-weight: bold">
        Prescription FORM:</h2>
    <p style="font-weight: bold">
        (Please provide correct Patient type for Patient and Correct owner address for Owner. Otherwise there will be validation error.)</p>
    <h2 style="font-weight: bold">
        <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="PRESCRIPTION_ID" DataSourceID="Presform" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="16px" Width="16px" style="margin-top: 0px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="PRESCRIPTION_ID" HeaderText="ID" ReadOnly="True" SortExpression="PRESCRIPTION_ID" />
                <asp:TemplateField HeaderText="PATIENT NAME" SortExpression="PATIENT_NAME">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PATIENT_NAME") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="PETNAME" DataValueField="PETNAME" SelectedValue='<%# Bind("PATIENT_NAME") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("PATIENT_NAME") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PATIENT TYPE" SortExpression="PATIENT_TYPE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PATIENT_TYPE") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="PETTYPE" DataValueField="PETTYPE" SelectedValue='<%# Bind("PATIENT_TYPE") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("PATIENT_TYPE") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OWNER" SortExpression="OWNER">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("OWNER") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="OWNERNAME" DataValueField="OWNERNAME" SelectedValue='<%# Bind("OWNER") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("OWNER") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OWNER ADDRESS" SortExpression="CUSTOMER_ADDRESS">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CUSTOMER_ADDRESS") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource1" DataTextField="OWNERADDR" DataValueField="OWNERADDR" SelectedValue='<%# Bind("CUSTOMER_ADDRESS") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("CUSTOMER_ADDRESS") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PRESCRIPTION BY" SortExpression="PRESCRIPTION_BY">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("PRESCRIPTION_BY") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource5" DataTextField="NAME" DataValueField="NAME" SelectedValue='<%# Bind("PRESCRIPTION_BY") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("PRESCRIPTION_BY") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DRUG" SortExpression="DRUG">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("DRUG") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource6" DataTextField="NAME" DataValueField="NAME" SelectedValue='<%# Bind("DRUG") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("DRUG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="DOSAGE" HeaderText="DOSAGE" SortExpression="DOSAGE" />
                <asp:BoundField DataField="PERIOD" HeaderText="PERIOD" SortExpression="PERIOD" />
                <asp:BoundField DataField="LENGTH_OF_COURSE" HeaderText="LENGTH OF COURSE" SortExpression="LENGTH_OF_COURSE" />
                <asp:BoundField DataField="COST" HeaderText="COST" SortExpression="COST" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
    </h2>
    <p style="font-weight: bold">
        &nbsp;</p>
    <p style="font-weight: bold">
        <asp:SqlDataSource ID="Presform" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT * FROM &quot;TBL_PRESCRIPTION&quot;" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM &quot;TBL_PRESCRIPTION&quot; WHERE &quot;PRESCRIPTION_ID&quot; = :original_PRESCRIPTION_ID AND &quot;PATIENT_NAME&quot; = :original_PATIENT_NAME AND &quot;PATIENT_TYPE&quot; = :original_PATIENT_TYPE AND &quot;OWNER&quot; = :original_OWNER AND &quot;CUSTOMER_ADDRESS&quot; = :original_CUSTOMER_ADDRESS AND &quot;PRESCRIPTION_BY&quot; = :original_PRESCRIPTION_BY AND &quot;DRUG&quot; = :original_DRUG AND &quot;DOSAGE&quot; = :original_DOSAGE AND &quot;PERIOD&quot; = :original_PERIOD AND &quot;LENGTH_OF_COURSE&quot; = :original_LENGTH_OF_COURSE AND &quot;COST&quot; = :original_COST" InsertCommand="INSERT INTO &quot;TBL_PRESCRIPTION&quot; (&quot;PRESCRIPTION_ID&quot;, &quot;PATIENT_NAME&quot;, &quot;PATIENT_TYPE&quot;, &quot;OWNER&quot;, &quot;CUSTOMER_ADDRESS&quot;, &quot;PRESCRIPTION_BY&quot;, &quot;DRUG&quot;, &quot;DOSAGE&quot;, &quot;PERIOD&quot;, &quot;LENGTH_OF_COURSE&quot;, &quot;COST&quot;) VALUES (:PRESCRIPTION_ID, :PATIENT_NAME, :PATIENT_TYPE, :OWNER, :CUSTOMER_ADDRESS, :PRESCRIPTION_BY, :DRUG, :DOSAGE, :PERIOD, :LENGTH_OF_COURSE, :COST)" UpdateCommand="UPDATE &quot;TBL_PRESCRIPTION&quot; SET &quot;PATIENT_NAME&quot; = :PATIENT_NAME, &quot;PATIENT_TYPE&quot; = :PATIENT_TYPE, &quot;OWNER&quot; = :OWNER, &quot;CUSTOMER_ADDRESS&quot; = :CUSTOMER_ADDRESS, &quot;PRESCRIPTION_BY&quot; = :PRESCRIPTION_BY, &quot;DRUG&quot; = :DRUG, &quot;DOSAGE&quot; = :DOSAGE, &quot;PERIOD&quot; = :PERIOD, &quot;LENGTH_OF_COURSE&quot; = :LENGTH_OF_COURSE, &quot;COST&quot; = :COST WHERE &quot;PRESCRIPTION_ID&quot; = :original_PRESCRIPTION_ID AND &quot;PATIENT_NAME&quot; = :original_PATIENT_NAME AND &quot;PATIENT_TYPE&quot; = :original_PATIENT_TYPE AND &quot;OWNER&quot; = :original_OWNER AND &quot;CUSTOMER_ADDRESS&quot; = :original_CUSTOMER_ADDRESS AND &quot;PRESCRIPTION_BY&quot; = :original_PRESCRIPTION_BY AND &quot;DRUG&quot; = :original_DRUG AND &quot;DOSAGE&quot; = :original_DOSAGE AND &quot;PERIOD&quot; = :original_PERIOD AND &quot;LENGTH_OF_COURSE&quot; = :original_LENGTH_OF_COURSE AND &quot;COST&quot; = :original_COST">
            <DeleteParameters>
                <asp:Parameter Name="original_PRESCRIPTION_ID" Type="Decimal" />
                <asp:Parameter Name="original_PATIENT_NAME" Type="String" />
                <asp:Parameter Name="original_PATIENT_TYPE" Type="String" />
                <asp:Parameter Name="original_OWNER" Type="String" />
                <asp:Parameter Name="original_CUSTOMER_ADDRESS" Type="String" />
                <asp:Parameter Name="original_PRESCRIPTION_BY" Type="String" />
                <asp:Parameter Name="original_DRUG" Type="String" />
                <asp:Parameter Name="original_DOSAGE" Type="String" />
                <asp:Parameter Name="original_PERIOD" Type="String" />
                <asp:Parameter Name="original_LENGTH_OF_COURSE" Type="String" />
                <asp:Parameter Name="original_COST" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PRESCRIPTION_ID" Type="Decimal" />
                <asp:Parameter Name="PATIENT_NAME" Type="String" />
                <asp:Parameter Name="PATIENT_TYPE" Type="String" />
                <asp:Parameter Name="OWNER" Type="String" />
                <asp:Parameter Name="CUSTOMER_ADDRESS" Type="String" />
                <asp:Parameter Name="PRESCRIPTION_BY" Type="String" />
                <asp:Parameter Name="DRUG" Type="String" />
                <asp:Parameter Name="DOSAGE" Type="String" />
                <asp:Parameter Name="PERIOD" Type="String" />
                <asp:Parameter Name="LENGTH_OF_COURSE" Type="String" />
                <asp:Parameter Name="COST" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PATIENT_NAME" Type="String" />
                <asp:Parameter Name="PATIENT_TYPE" Type="String" />
                <asp:Parameter Name="OWNER" Type="String" />
                <asp:Parameter Name="CUSTOMER_ADDRESS" Type="String" />
                <asp:Parameter Name="PRESCRIPTION_BY" Type="String" />
                <asp:Parameter Name="DRUG" Type="String" />
                <asp:Parameter Name="DOSAGE" Type="String" />
                <asp:Parameter Name="PERIOD" Type="String" />
                <asp:Parameter Name="LENGTH_OF_COURSE" Type="String" />
                <asp:Parameter Name="COST" Type="Decimal" />
                <asp:Parameter Name="original_PRESCRIPTION_ID" Type="Decimal" />
                <asp:Parameter Name="original_PATIENT_NAME" Type="String" />
                <asp:Parameter Name="original_PATIENT_TYPE" Type="String" />
                <asp:Parameter Name="original_OWNER" Type="String" />
                <asp:Parameter Name="original_CUSTOMER_ADDRESS" Type="String" />
                <asp:Parameter Name="original_PRESCRIPTION_BY" Type="String" />
                <asp:Parameter Name="original_DRUG" Type="String" />
                <asp:Parameter Name="original_DOSAGE" Type="String" />
                <asp:Parameter Name="original_PERIOD" Type="String" />
                <asp:Parameter Name="original_LENGTH_OF_COURSE" Type="String" />
                <asp:Parameter Name="original_COST" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;OWNERADDR&quot; FROM &quot;OWNER&quot;">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;PETNAME&quot; FROM &quot;PET&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;PETTYPE&quot; FROM &quot;PET&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;OWNERNAME&quot; FROM &quot;OWNER&quot;" OnSelecting="SqlDataSource4_Selecting"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;NAME&quot; FROM &quot;TBL_VET&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;NAME&quot; FROM &quot;TBL_DRUG&quot;"></asp:SqlDataSource>
    </p>
    <p style="font-weight: bold">
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;PETNAME&quot; FROM &quot;PET&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;PETTYPE&quot; FROM &quot;PET&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;OWNERNAME&quot; FROM &quot;OWNER&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;OWNERADDR&quot; FROM &quot;OWNER&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;NAME&quot; FROM &quot;TBL_VET&quot;"></asp:SqlDataSource>
    </p>
    <h2 style="font-weight: bold">
        PRESCRIPTION DETAILS:</h2>
    <p style="font-weight: bold">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PRESCRIPTION_ID" DataSourceID="PresList" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="PRESCRIPTION_ID" HeaderText="ID" ReadOnly="True" SortExpression="PRESCRIPTION_ID" />
                <asp:BoundField DataField="PATIENT_NAME" HeaderText="PATIENT NAME" SortExpression="PATIENT_NAME" />
                <asp:BoundField DataField="PATIENT_TYPE" HeaderText="PATIENT TYPE" SortExpression="PATIENT_TYPE" />
                <asp:BoundField DataField="OWNER" HeaderText="OWNER" SortExpression="OWNER" />
                <asp:BoundField DataField="CUSTOMER_ADDRESS" HeaderText="ADDRESS" SortExpression="CUSTOMER_ADDRESS" />
                <asp:BoundField DataField="PRESCRIPTION_BY" HeaderText="PRESCRIPTION BY" SortExpression="PRESCRIPTION_BY" />
                <asp:BoundField DataField="DRUG" HeaderText="DRUG" SortExpression="DRUG" />
                <asp:BoundField DataField="DOSAGE" HeaderText="DOSAGE" SortExpression="DOSAGE" />
                <asp:BoundField DataField="PERIOD" HeaderText="PERIOD" SortExpression="PERIOD" />
                <asp:BoundField DataField="LENGTH_OF_COURSE" HeaderText="LENGTH OF COURSE" SortExpression="LENGTH_OF_COURSE" />
                <asp:BoundField DataField="COST" HeaderText="COST" SortExpression="COST" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="PresList" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT * FROM &quot;TBL_PRESCRIPTION&quot;" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM &quot;TBL_PRESCRIPTION&quot; WHERE &quot;PRESCRIPTION_ID&quot; = :original_PRESCRIPTION_ID AND &quot;PATIENT_NAME&quot; = :original_PATIENT_NAME AND &quot;PATIENT_TYPE&quot; = :original_PATIENT_TYPE AND &quot;OWNER&quot; = :original_OWNER AND &quot;CUSTOMER_ADDRESS&quot; = :original_CUSTOMER_ADDRESS AND &quot;PRESCRIPTION_BY&quot; = :original_PRESCRIPTION_BY AND &quot;DRUG&quot; = :original_DRUG AND &quot;DOSAGE&quot; = :original_DOSAGE AND &quot;PERIOD&quot; = :original_PERIOD AND &quot;LENGTH_OF_COURSE&quot; = :original_LENGTH_OF_COURSE AND &quot;COST&quot; = :original_COST" InsertCommand="INSERT INTO &quot;TBL_PRESCRIPTION&quot; (&quot;PRESCRIPTION_ID&quot;, &quot;PATIENT_NAME&quot;, &quot;PATIENT_TYPE&quot;, &quot;OWNER&quot;, &quot;CUSTOMER_ADDRESS&quot;, &quot;PRESCRIPTION_BY&quot;, &quot;DRUG&quot;, &quot;DOSAGE&quot;, &quot;PERIOD&quot;, &quot;LENGTH_OF_COURSE&quot;, &quot;COST&quot;) VALUES (:PRESCRIPTION_ID, :PATIENT_NAME, :PATIENT_TYPE, :OWNER, :CUSTOMER_ADDRESS, :PRESCRIPTION_BY, :DRUG, :DOSAGE, :PERIOD, :LENGTH_OF_COURSE, :COST)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE &quot;TBL_PRESCRIPTION&quot; SET &quot;PATIENT_NAME&quot; = :PATIENT_NAME, &quot;PATIENT_TYPE&quot; = :PATIENT_TYPE, &quot;OWNER&quot; = :OWNER, &quot;CUSTOMER_ADDRESS&quot; = :CUSTOMER_ADDRESS, &quot;PRESCRIPTION_BY&quot; = :PRESCRIPTION_BY, &quot;DRUG&quot; = :DRUG, &quot;DOSAGE&quot; = :DOSAGE, &quot;PERIOD&quot; = :PERIOD, &quot;LENGTH_OF_COURSE&quot; = :LENGTH_OF_COURSE, &quot;COST&quot; = :COST WHERE &quot;PRESCRIPTION_ID&quot; = :original_PRESCRIPTION_ID AND &quot;PATIENT_NAME&quot; = :original_PATIENT_NAME AND &quot;PATIENT_TYPE&quot; = :original_PATIENT_TYPE AND &quot;OWNER&quot; = :original_OWNER AND &quot;CUSTOMER_ADDRESS&quot; = :original_CUSTOMER_ADDRESS AND &quot;PRESCRIPTION_BY&quot; = :original_PRESCRIPTION_BY AND &quot;DRUG&quot; = :original_DRUG AND &quot;DOSAGE&quot; = :original_DOSAGE AND &quot;PERIOD&quot; = :original_PERIOD AND &quot;LENGTH_OF_COURSE&quot; = :original_LENGTH_OF_COURSE AND &quot;COST&quot; = :original_COST">
            <DeleteParameters>
                <asp:Parameter Name="original_PRESCRIPTION_ID" Type="Decimal" />
                <asp:Parameter Name="original_PATIENT_NAME" Type="String" />
                <asp:Parameter Name="original_PATIENT_TYPE" Type="String" />
                <asp:Parameter Name="original_OWNER" Type="String" />
                <asp:Parameter Name="original_CUSTOMER_ADDRESS" Type="String" />
                <asp:Parameter Name="original_PRESCRIPTION_BY" Type="String" />
                <asp:Parameter Name="original_DRUG" Type="String" />
                <asp:Parameter Name="original_DOSAGE" Type="String" />
                <asp:Parameter Name="original_PERIOD" Type="String" />
                <asp:Parameter Name="original_LENGTH_OF_COURSE" Type="String" />
                <asp:Parameter Name="original_COST" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PRESCRIPTION_ID" Type="Decimal" />
                <asp:Parameter Name="PATIENT_NAME" Type="String" />
                <asp:Parameter Name="PATIENT_TYPE" Type="String" />
                <asp:Parameter Name="OWNER" Type="String" />
                <asp:Parameter Name="CUSTOMER_ADDRESS" Type="String" />
                <asp:Parameter Name="PRESCRIPTION_BY" Type="String" />
                <asp:Parameter Name="DRUG" Type="String" />
                <asp:Parameter Name="DOSAGE" Type="String" />
                <asp:Parameter Name="PERIOD" Type="String" />
                <asp:Parameter Name="LENGTH_OF_COURSE" Type="String" />
                <asp:Parameter Name="COST" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PATIENT_NAME" Type="String" />
                <asp:Parameter Name="PATIENT_TYPE" Type="String" />
                <asp:Parameter Name="OWNER" Type="String" />
                <asp:Parameter Name="CUSTOMER_ADDRESS" Type="String" />
                <asp:Parameter Name="PRESCRIPTION_BY" Type="String" />
                <asp:Parameter Name="DRUG" Type="String" />
                <asp:Parameter Name="DOSAGE" Type="String" />
                <asp:Parameter Name="PERIOD" Type="String" />
                <asp:Parameter Name="LENGTH_OF_COURSE" Type="String" />
                <asp:Parameter Name="COST" Type="Decimal" />
                <asp:Parameter Name="original_PRESCRIPTION_ID" Type="Decimal" />
                <asp:Parameter Name="original_PATIENT_NAME" Type="String" />
                <asp:Parameter Name="original_PATIENT_TYPE" Type="String" />
                <asp:Parameter Name="original_OWNER" Type="String" />
                <asp:Parameter Name="original_CUSTOMER_ADDRESS" Type="String" />
                <asp:Parameter Name="original_PRESCRIPTION_BY" Type="String" />
                <asp:Parameter Name="original_DRUG" Type="String" />
                <asp:Parameter Name="original_DOSAGE" Type="String" />
                <asp:Parameter Name="original_PERIOD" Type="String" />
                <asp:Parameter Name="original_LENGTH_OF_COURSE" Type="String" />
                <asp:Parameter Name="original_COST" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p style="font-weight: bold">
        <table style="width:100%;">
        </table>
    </p>
</asp:Content>
