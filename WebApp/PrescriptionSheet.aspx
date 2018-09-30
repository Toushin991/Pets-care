<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="PrescriptionSheet.aspx.cs" Inherits="PrescriptionSheet" %>



<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        60 Holloway Road </br>
    
        N7 1BB</p>
    <h2>
        SELECTED PRESCRIPTION DETAILS:</h2>
    <p>
        (Please select an ID from prescription details list to return data)</p>
    <p>
     
        <asp:FormView ID="FormView1" runat="server" DataSourceID="DSpres">
            <EditItemTemplate>
                PRES_ID:
                <asp:TextBox ID="PRES_IDTextBox" runat="server" Text='<%# Bind("PRES_ID") %>' />
                <br />
                PETNAME:
                <asp:TextBox ID="PETNAMETextBox" runat="server" Text='<%# Bind("PETNAME") %>' />
                <br />
                PETTYPE:
                <asp:TextBox ID="PETTYPETextBox" runat="server" Text='<%# Bind("PETTYPE") %>' />
                <br />
                OWNER:
                <asp:TextBox ID="OWNERTextBox" runat="server" Text='<%# Bind("OWNER") %>' />
                <br />
                OWNERADDR:
                <asp:TextBox ID="OWNERADDRTextBox" runat="server" Text='<%# Bind("OWNERADDR") %>' />
                <br />
                VET_NAME:
                <asp:TextBox ID="VET_NAMETextBox" runat="server" Text='<%# Bind("VET_NAME") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                PRES_ID:
                <asp:TextBox ID="PRES_IDTextBox" runat="server" Text='<%# Bind("PRES_ID") %>' />
                <br />
                PETNAME:
                <asp:TextBox ID="PETNAMETextBox" runat="server" Text='<%# Bind("PETNAME") %>' />
                <br />
                PETTYPE:
                <asp:TextBox ID="PETTYPETextBox" runat="server" Text='<%# Bind("PETTYPE") %>' />
                <br />
                OWNER:
                <asp:TextBox ID="OWNERTextBox" runat="server" Text='<%# Bind("OWNER") %>' />
                <br />
                OWNERADDR:
                <asp:TextBox ID="OWNERADDRTextBox" runat="server" Text='<%# Bind("OWNERADDR") %>' />
                <br />
                VET_NAME:
                <asp:TextBox ID="VET_NAMETextBox" runat="server" Text='<%# Bind("VET_NAME") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                PRES_ID:
                <asp:Label ID="PRES_IDLabel" runat="server" Text='<%# Bind("PRES_ID") %>' />
                <br />
                PETNAME:
                <asp:Label ID="PETNAMELabel" runat="server" Text='<%# Bind("PETNAME") %>' />
                <br />
                PETTYPE:
                <asp:Label ID="PETTYPELabel" runat="server" Text='<%# Bind("PETTYPE") %>' />
                <br />
                OWNER:
                <asp:Label ID="OWNERLabel" runat="server" Text='<%# Bind("OWNER") %>' />
                <br />
                OWNERADDR:
                <asp:Label ID="OWNERADDRLabel" runat="server" Text='<%# Bind("OWNERADDR") %>' />
                <br />
                VET_NAME:
                <asp:Label ID="VET_NAMELabel" runat="server" Text='<%# Bind("VET_NAME") %>' />
                <br />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="DSpres" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT &quot;PRES_ID&quot;, &quot;PETNAME&quot;, &quot;PETTYPE&quot;, &quot;OWNER&quot;, &quot;OWNERADDR&quot;, &quot;VET_NAME&quot; FROM &quot;PRESCRIPTION_VIEW&quot; WHERE (&quot;PRES_ID&quot; = :PRES_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="PRES_ID" PropertyName="SelectedValue" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="DSdrug" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT &quot;DRUG&quot;, &quot;DOSAGE&quot;, &quot;PERIOD&quot;, &quot;LENGTH_OF_COURSE&quot;, &quot;DRUG_COST&quot; FROM &quot;PRESCRIPTION_VIEW&quot; WHERE (&quot;PRES_ID&quot; = :PRES_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="PRES_ID" PropertyName="SelectedValue" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="DSdrug">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF;color: #284775;">
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
                        <asp:Label ID="DRUG_COSTLabel" runat="server" Text='<%# Eval("DRUG_COST") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #999999;">
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
                        <asp:TextBox ID="DRUG_COSTTextBox" runat="server" Text='<%# Bind("DRUG_COST") %>' />
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
                        <asp:TextBox ID="DRUG_COSTTextBox" runat="server" Text='<%# Bind("DRUG_COST") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #E0FFFF;color: #333333;">
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
                        <asp:Label ID="DRUG_COSTLabel" runat="server" Text='<%# Eval("DRUG_COST") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                    <th runat="server">DRUG</th>
                                    <th runat="server">DOSAGE</th>
                                    <th runat="server">PERIOD</th>
                                    <th runat="server">LENGTH_OF_COURSE</th>
                                    <th runat="server">DRUG_COST</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
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
                        <asp:Label ID="DRUG_COSTLabel" runat="server" Text='<%# Eval("DRUG_COST") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>

    </p>
    <h2>
        PRESCRIPTION FORM:</h2>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="DSpr" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px" DataKeyNames="PRES_ID">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="PRES_ID" HeaderText="PRES_ID" SortExpression="PRES_ID" ReadOnly="True" />
                <asp:TemplateField HeaderText="PET_ID" SortExpression="PET_ID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PET_ID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="PET_ID" DataValueField="PET_ID" SelectedValue='<%# Bind("PET_ID") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("PET_ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PRESCRIPTION_BY" SortExpression="PRESCRIPTION_BY">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PRESCRIPTION_BY") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="VET_ID" DataValueField="VET_ID" SelectedValue='<%# Bind("PRESCRIPTION_BY") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("PRESCRIPTION_BY") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DRUG" SortExpression="DRUG">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DRUG") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="DRUG_ID" DataValueField="DRUG_ID" SelectedValue='<%# Bind("DRUG") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("DRUG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="DOSAGE" HeaderText="DOSAGE" SortExpression="DOSAGE" />
                <asp:BoundField DataField="PERIOD" HeaderText="PERIOD" SortExpression="PERIOD" />
                <asp:BoundField DataField="LENGTH_OF_COURSE" HeaderText="LENGTH_OF_COURSE" SortExpression="LENGTH_OF_COURSE" />
                <asp:BoundField DataField="DRUG_COST" HeaderText="DRUG_COST" SortExpression="DRUG_COST" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="DSpr" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" InsertCommand="INSERT INTO &quot;NEW_PRESCRIPTION&quot; (&quot;PRES_ID&quot;, &quot;PET_ID&quot;, &quot;PRESCRIPTION_BY&quot;, &quot;DRUG&quot;, &quot;DOSAGE&quot;, &quot;PERIOD&quot;, &quot;LENGTH_OF_COURSE&quot;, &quot;DRUG_COST&quot;) VALUES (:PRES_ID, :PET_ID, :PRESCRIPTION_BY, :DRUG, :DOSAGE, :PERIOD, :LENGTH_OF_COURSE, :DRUG_COST)" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT * FROM &quot;NEW_PRESCRIPTION&quot;" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM &quot;NEW_PRESCRIPTION&quot; WHERE &quot;PRES_ID&quot; = :original_PRES_ID AND &quot;PET_ID&quot; = :original_PET_ID AND &quot;PRESCRIPTION_BY&quot; = :original_PRESCRIPTION_BY AND &quot;DRUG&quot; = :original_DRUG AND &quot;DOSAGE&quot; = :original_DOSAGE AND &quot;PERIOD&quot; = :original_PERIOD AND &quot;LENGTH_OF_COURSE&quot; = :original_LENGTH_OF_COURSE AND &quot;DRUG_COST&quot; = :original_DRUG_COST" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE &quot;NEW_PRESCRIPTION&quot; SET &quot;PET_ID&quot; = :PET_ID, &quot;PRESCRIPTION_BY&quot; = :PRESCRIPTION_BY, &quot;DRUG&quot; = :DRUG, &quot;DOSAGE&quot; = :DOSAGE, &quot;PERIOD&quot; = :PERIOD, &quot;LENGTH_OF_COURSE&quot; = :LENGTH_OF_COURSE, &quot;DRUG_COST&quot; = :DRUG_COST WHERE &quot;PRES_ID&quot; = :original_PRES_ID AND &quot;PET_ID&quot; = :original_PET_ID AND &quot;PRESCRIPTION_BY&quot; = :original_PRESCRIPTION_BY AND &quot;DRUG&quot; = :original_DRUG AND &quot;DOSAGE&quot; = :original_DOSAGE AND &quot;PERIOD&quot; = :original_PERIOD AND &quot;LENGTH_OF_COURSE&quot; = :original_LENGTH_OF_COURSE AND &quot;DRUG_COST&quot; = :original_DRUG_COST">
            <DeleteParameters>
                <asp:Parameter Name="original_PRES_ID" Type="Decimal" />
                <asp:Parameter Name="original_PET_ID" Type="Decimal" />
                <asp:Parameter Name="original_PRESCRIPTION_BY" Type="Decimal" />
                <asp:Parameter Name="original_DRUG" Type="Decimal" />
                <asp:Parameter Name="original_DOSAGE" Type="String" />
                <asp:Parameter Name="original_PERIOD" Type="String" />
                <asp:Parameter Name="original_LENGTH_OF_COURSE" Type="String" />
                <asp:Parameter Name="original_DRUG_COST" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PRES_ID" Type="Decimal" />
                <asp:Parameter Name="PET_ID" Type="Decimal" />
                <asp:Parameter Name="PRESCRIPTION_BY" Type="Decimal" />
                <asp:Parameter Name="DRUG" Type="Decimal" />
                <asp:Parameter Name="DOSAGE" Type="String" />
                <asp:Parameter Name="PERIOD" Type="String" />
                <asp:Parameter Name="LENGTH_OF_COURSE" Type="String" />
                <asp:Parameter Name="DRUG_COST" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PET_ID" Type="Decimal" />
                <asp:Parameter Name="PRESCRIPTION_BY" Type="Decimal" />
                <asp:Parameter Name="DRUG" Type="Decimal" />
                <asp:Parameter Name="DOSAGE" Type="String" />
                <asp:Parameter Name="PERIOD" Type="String" />
                <asp:Parameter Name="LENGTH_OF_COURSE" Type="String" />
                <asp:Parameter Name="DRUG_COST" Type="Decimal" />
                <asp:Parameter Name="original_PRES_ID" Type="Decimal" />
                <asp:Parameter Name="original_PET_ID" Type="Decimal" />
                <asp:Parameter Name="original_PRESCRIPTION_BY" Type="Decimal" />
                <asp:Parameter Name="original_DRUG" Type="Decimal" />
                <asp:Parameter Name="original_DOSAGE" Type="String" />
                <asp:Parameter Name="original_PERIOD" Type="String" />
                <asp:Parameter Name="original_LENGTH_OF_COURSE" Type="String" />
                <asp:Parameter Name="original_DRUG_COST" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;VET_ID&quot; FROM &quot;TBL_VET&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;PET_ID&quot; FROM &quot;PET&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;DRUG_ID&quot; FROM &quot;TBL_DRUG&quot;"></asp:SqlDataSource>
        <br />
        <h2>PRESCRIPTION DETAILS LIST:</h2>
        <div style="overflow:scroll">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="DSpr" ForeColor="#333333" GridLines="None" DataKeyNames="PRES_ID">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="PRES_ID" HeaderText="PRES_ID" SortExpression="PRES_ID" ReadOnly="True" />
                <asp:BoundField DataField="PET_ID" HeaderText="PET_ID" SortExpression="PET_ID" />
                <asp:BoundField DataField="PRESCRIPTION_BY" HeaderText="PRESCRIPTION_BY" SortExpression="PRESCRIPTION_BY" />
                <asp:BoundField DataField="DRUG" HeaderText="DRUG" SortExpression="DRUG" />
                <asp:BoundField DataField="DOSAGE" HeaderText="DOSAGE" SortExpression="DOSAGE" />
                <asp:BoundField DataField="PERIOD" HeaderText="PERIOD" SortExpression="PERIOD" />
                <asp:BoundField DataField="LENGTH_OF_COURSE" HeaderText="LENGTH_OF_COURSE" SortExpression="LENGTH_OF_COURSE" />
                <asp:BoundField DataField="DRUG_COST" HeaderText="DRUG_COST" SortExpression="DRUG_COST" />
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
        <br />
</asp:Content>
