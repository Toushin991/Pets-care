<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Appointment.aspx.cs" Inherits="Appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        60 Holloway Road </br>
    
        N7 1BB</p>
    <h2>
        Appointment DETAILS:</h2>
    <p>
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="APP_ID" DataSourceID="AppEdit" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="APP_ID" HeaderText="ID" ReadOnly="True" SortExpression="APP_ID" />
                <asp:TemplateField HeaderText="NAME" SortExpression="NAME">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource5" DataTextField="PETNAME" DataValueField="PETNAME" SelectedValue='<%# Bind("NAME") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NAME") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("NAME") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OWNER" SortExpression="OWNER">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource6" DataTextField="OWNERNAME" DataValueField="OWNERNAME" SelectedValue='<%# Bind("OWNER") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("OWNER") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("OWNER") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="APPOINTMENT_DATE" HeaderText="APPOINTMENT DATE" SortExpression="APPOINTMENT_DATE" />
                <asp:BoundField DataField="DETAILS" HeaderText="DETAILS" SortExpression="DETAILS" />
                <asp:TemplateField HeaderText="DOCTOR" SortExpression="VET_NAME">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource8" DataTextField="NAME" DataValueField="NAME" SelectedValue='<%# Bind("VET_NAME") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("VET_NAME") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("VET_NAME") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="COST_OF_APPOINTMENT" HeaderText="APPOINTMENT COST" SortExpression="COST_OF_APPOINTMENT" />
                <asp:TemplateField HeaderText="PRESCRIPTION NO" SortExpression="PRESCRIPTION_NUMBER">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList9" runat="server" DataSourceID="SqlDataSource9" DataTextField="PRESCRIPTION_ID" DataValueField="PRESCRIPTION_ID" SelectedValue='<%# Bind("PRESCRIPTION_NUMBER") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("PRESCRIPTION_NUMBER") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("PRESCRIPTION_NUMBER") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DRUG" SortExpression="DRUG">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList10" runat="server" DataSourceID="SqlDataSource10" DataTextField="NAME" DataValueField="NAME" SelectedValue='<%# Bind("DRUG") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("DRUG") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("DRUG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="DRUG_COST" HeaderText="DRUG COST" SortExpression="DRUG_COST" />
                <asp:BoundField DataField="RECOMMENDATION" HeaderText="RECOMMENDATION" SortExpression="RECOMMENDATION" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="AppEdit" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" DeleteCommand="DELETE FROM &quot;TBL_APPOINTMENT&quot; WHERE &quot;APP_ID&quot; = :original_APP_ID AND &quot;NAME&quot; = :original_NAME AND &quot;OWNER&quot; = :original_OWNER AND &quot;APPOINTMENT_DATE&quot; = :original_APPOINTMENT_DATE AND ((&quot;DETAILS&quot; = :original_DETAILS) OR (&quot;DETAILS&quot; IS NULL AND :original_DETAILS IS NULL)) AND &quot;VET_NAME&quot; = :original_VET_NAME AND &quot;COST_OF_APPOINTMENT&quot; = :original_COST_OF_APPOINTMENT AND &quot;PRESCRIPTION_NUMBER&quot; = :original_PRESCRIPTION_NUMBER AND &quot;DRUG&quot; = :original_DRUG AND &quot;DRUG_COST&quot; = :original_DRUG_COST AND ((&quot;RECOMMENDATION&quot; = :original_RECOMMENDATION) OR (&quot;RECOMMENDATION&quot; IS NULL AND :original_RECOMMENDATION IS NULL))" InsertCommand="INSERT INTO &quot;TBL_APPOINTMENT&quot; (&quot;APP_ID&quot;, &quot;NAME&quot;, &quot;OWNER&quot;, &quot;APPOINTMENT_DATE&quot;, &quot;DETAILS&quot;, &quot;VET_NAME&quot;, &quot;COST_OF_APPOINTMENT&quot;, &quot;PRESCRIPTION_NUMBER&quot;, &quot;DRUG&quot;, &quot;DRUG_COST&quot;, &quot;RECOMMENDATION&quot;) VALUES (:APP_ID, :NAME, :OWNER, :APPOINTMENT_DATE, :DETAILS, :VET_NAME, :COST_OF_APPOINTMENT, :PRESCRIPTION_NUMBER, :DRUG, :DRUG_COST, :RECOMMENDATION)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT * FROM &quot;TBL_APPOINTMENT&quot; WHERE (&quot;APP_ID&quot; = :APP_ID)" UpdateCommand="UPDATE &quot;TBL_APPOINTMENT&quot; SET &quot;NAME&quot; = :NAME, &quot;OWNER&quot; = :OWNER, &quot;APPOINTMENT_DATE&quot; = :APPOINTMENT_DATE, &quot;DETAILS&quot; = :DETAILS, &quot;VET_NAME&quot; = :VET_NAME, &quot;COST_OF_APPOINTMENT&quot; = :COST_OF_APPOINTMENT, &quot;PRESCRIPTION_NUMBER&quot; = :PRESCRIPTION_NUMBER, &quot;DRUG&quot; = :DRUG, &quot;DRUG_COST&quot; = :DRUG_COST, &quot;RECOMMENDATION&quot; = :RECOMMENDATION WHERE &quot;APP_ID&quot; = :original_APP_ID AND &quot;NAME&quot; = :original_NAME AND &quot;OWNER&quot; = :original_OWNER AND &quot;APPOINTMENT_DATE&quot; = :original_APPOINTMENT_DATE AND ((&quot;DETAILS&quot; = :original_DETAILS) OR (&quot;DETAILS&quot; IS NULL AND :original_DETAILS IS NULL)) AND &quot;VET_NAME&quot; = :original_VET_NAME AND &quot;COST_OF_APPOINTMENT&quot; = :original_COST_OF_APPOINTMENT AND &quot;PRESCRIPTION_NUMBER&quot; = :original_PRESCRIPTION_NUMBER AND &quot;DRUG&quot; = :original_DRUG AND &quot;DRUG_COST&quot; = :original_DRUG_COST AND ((&quot;RECOMMENDATION&quot; = :original_RECOMMENDATION) OR (&quot;RECOMMENDATION&quot; IS NULL AND :original_RECOMMENDATION IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_APP_ID" Type="Decimal" />
                <asp:Parameter Name="original_NAME" Type="String" />
                <asp:Parameter Name="original_OWNER" Type="String" />
                <asp:Parameter Name="original_APPOINTMENT_DATE" Type="DateTime" />
                <asp:Parameter Name="original_DETAILS" Type="String" />
                <asp:Parameter Name="original_VET_NAME" Type="String" />
                <asp:Parameter Name="original_COST_OF_APPOINTMENT" Type="Decimal" />
                <asp:Parameter Name="original_PRESCRIPTION_NUMBER" Type="Decimal" />
                <asp:Parameter Name="original_DRUG" Type="String" />
                <asp:Parameter Name="original_DRUG_COST" Type="Decimal" />
                <asp:Parameter Name="original_RECOMMENDATION" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="APP_ID" Type="Decimal" />
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="OWNER" Type="String" />
                <asp:Parameter Name="APPOINTMENT_DATE" Type="DateTime" />
                <asp:Parameter Name="DETAILS" Type="String" />
                <asp:Parameter Name="VET_NAME" Type="String" />
                <asp:Parameter Name="COST_OF_APPOINTMENT" Type="Decimal" />
                <asp:Parameter Name="PRESCRIPTION_NUMBER" Type="Decimal" />
                <asp:Parameter Name="DRUG" Type="String" />
                <asp:Parameter Name="DRUG_COST" Type="Decimal" />
                <asp:Parameter Name="RECOMMENDATION" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="APP_ID" PropertyName="SelectedValue" Type="Decimal" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="OWNER" Type="String" />
                <asp:Parameter Name="APPOINTMENT_DATE" Type="DateTime" />
                <asp:Parameter Name="DETAILS" Type="String" />
                <asp:Parameter Name="VET_NAME" Type="String" />
                <asp:Parameter Name="COST_OF_APPOINTMENT" Type="Decimal" />
                <asp:Parameter Name="PRESCRIPTION_NUMBER" Type="Decimal" />
                <asp:Parameter Name="DRUG" Type="String" />
                <asp:Parameter Name="DRUG_COST" Type="Decimal" />
                <asp:Parameter Name="RECOMMENDATION" Type="String" />
                <asp:Parameter Name="original_APP_ID" Type="Decimal" />
                <asp:Parameter Name="original_NAME" Type="String" />
                <asp:Parameter Name="original_OWNER" Type="String" />
                <asp:Parameter Name="original_APPOINTMENT_DATE" Type="DateTime" />
                <asp:Parameter Name="original_DETAILS" Type="String" />
                <asp:Parameter Name="original_VET_NAME" Type="String" />
                <asp:Parameter Name="original_COST_OF_APPOINTMENT" Type="Decimal" />
                <asp:Parameter Name="original_PRESCRIPTION_NUMBER" Type="Decimal" />
                <asp:Parameter Name="original_DRUG" Type="String" />
                <asp:Parameter Name="original_DRUG_COST" Type="Decimal" />
                <asp:Parameter Name="original_RECOMMENDATION" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <h2>
        APPOINTMENT FORM:</h2>
    <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="APP_ID" DataSourceID="DSapp" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="APP_ID" HeaderText="ID" ReadOnly="True" SortExpression="APP_ID" />
                <asp:TemplateField HeaderText="NAME" SortExpression="NAME">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("NAME") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="PETNAME" DataValueField="PETNAME" SelectedValue='<%# Bind("NAME") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("NAME") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OWNER" SortExpression="OWNER">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("OWNER") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="OWNERNAME" DataValueField="OWNERNAME" SelectedValue='<%# Bind("OWNER") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("OWNER") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="APPOINTMENT_DATE" HeaderText="APPOINTMENT DATE" SortExpression="APPOINTMENT_DATE" />
                <asp:BoundField DataField="DETAILS" HeaderText="DETAILS" SortExpression="DETAILS" />
                <asp:TemplateField HeaderText="DOCTOR" SortExpression="VET_NAME">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("VET_NAME") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="NAME" DataValueField="NAME" SelectedValue='<%# Bind("VET_NAME") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("VET_NAME") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="COST_OF_APPOINTMENT" HeaderText="APPOINTMENT COST" SortExpression="COST_OF_APPOINTMENT" />
                <asp:TemplateField HeaderText="PRESCRIPTION NO" SortExpression="PRESCRIPTION_NUMBER">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("PRESCRIPTION_NUMBER") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource7" DataTextField="PRESCRIPTION_ID" DataValueField="PRESCRIPTION_ID" SelectedValue='<%# Bind("PRESCRIPTION_NUMBER") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("PRESCRIPTION_NUMBER") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DRUG" SortExpression="DRUG">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("DRUG") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="NAME" DataValueField="NAME" SelectedValue='<%# Bind("DRUG") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("DRUG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="DRUG_COST" HeaderText="DRUG COST" SortExpression="DRUG_COST" />
                <asp:BoundField DataField="RECOMMENDATION" HeaderText="RECOMMENDATION" SortExpression="RECOMMENDATION" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="DSapp" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" DeleteCommand="DELETE FROM &quot;TBL_APPOINTMENT&quot; WHERE &quot;APP_ID&quot; = :original_APP_ID AND &quot;NAME&quot; = :original_NAME AND &quot;OWNER&quot; = :original_OWNER AND &quot;APPOINTMENT_DATE&quot; = :original_APPOINTMENT_DATE AND ((&quot;DETAILS&quot; = :original_DETAILS) OR (&quot;DETAILS&quot; IS NULL AND :original_DETAILS IS NULL)) AND &quot;VET_NAME&quot; = :original_VET_NAME AND &quot;COST_OF_APPOINTMENT&quot; = :original_COST_OF_APPOINTMENT AND &quot;PRESCRIPTION_NUMBER&quot; = :original_PRESCRIPTION_NUMBER AND &quot;DRUG&quot; = :original_DRUG AND &quot;DRUG_COST&quot; = :original_DRUG_COST AND ((&quot;RECOMMENDATION&quot; = :original_RECOMMENDATION) OR (&quot;RECOMMENDATION&quot; IS NULL AND :original_RECOMMENDATION IS NULL))" InsertCommand="INSERT INTO &quot;TBL_APPOINTMENT&quot; (&quot;APP_ID&quot;, &quot;NAME&quot;, &quot;OWNER&quot;, &quot;APPOINTMENT_DATE&quot;, &quot;DETAILS&quot;, &quot;VET_NAME&quot;, &quot;COST_OF_APPOINTMENT&quot;, &quot;PRESCRIPTION_NUMBER&quot;, &quot;DRUG&quot;, &quot;DRUG_COST&quot;, &quot;RECOMMENDATION&quot;) VALUES (:APP_ID, :NAME, :OWNER, :APPOINTMENT_DATE, :DETAILS, :VET_NAME, :COST_OF_APPOINTMENT, :PRESCRIPTION_NUMBER, :DRUG, :DRUG_COST, :RECOMMENDATION)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT * FROM &quot;TBL_APPOINTMENT&quot;" UpdateCommand="UPDATE &quot;TBL_APPOINTMENT&quot; SET &quot;NAME&quot; = :NAME, &quot;OWNER&quot; = :OWNER, &quot;APPOINTMENT_DATE&quot; = :APPOINTMENT_DATE, &quot;DETAILS&quot; = :DETAILS, &quot;VET_NAME&quot; = :VET_NAME, &quot;COST_OF_APPOINTMENT&quot; = :COST_OF_APPOINTMENT, &quot;PRESCRIPTION_NUMBER&quot; = :PRESCRIPTION_NUMBER, &quot;DRUG&quot; = :DRUG, &quot;DRUG_COST&quot; = :DRUG_COST, &quot;RECOMMENDATION&quot; = :RECOMMENDATION WHERE &quot;APP_ID&quot; = :original_APP_ID AND &quot;NAME&quot; = :original_NAME AND &quot;OWNER&quot; = :original_OWNER AND &quot;APPOINTMENT_DATE&quot; = :original_APPOINTMENT_DATE AND ((&quot;DETAILS&quot; = :original_DETAILS) OR (&quot;DETAILS&quot; IS NULL AND :original_DETAILS IS NULL)) AND &quot;VET_NAME&quot; = :original_VET_NAME AND &quot;COST_OF_APPOINTMENT&quot; = :original_COST_OF_APPOINTMENT AND &quot;PRESCRIPTION_NUMBER&quot; = :original_PRESCRIPTION_NUMBER AND &quot;DRUG&quot; = :original_DRUG AND &quot;DRUG_COST&quot; = :original_DRUG_COST AND ((&quot;RECOMMENDATION&quot; = :original_RECOMMENDATION) OR (&quot;RECOMMENDATION&quot; IS NULL AND :original_RECOMMENDATION IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_APP_ID" Type="Decimal" />
                <asp:Parameter Name="original_NAME" Type="String" />
                <asp:Parameter Name="original_OWNER" Type="String" />
                <asp:Parameter Name="original_APPOINTMENT_DATE" Type="DateTime" />
                <asp:Parameter Name="original_DETAILS" Type="String" />
                <asp:Parameter Name="original_VET_NAME" Type="String" />
                <asp:Parameter Name="original_COST_OF_APPOINTMENT" Type="Decimal" />
                <asp:Parameter Name="original_PRESCRIPTION_NUMBER" Type="Decimal" />
                <asp:Parameter Name="original_DRUG" Type="String" />
                <asp:Parameter Name="original_DRUG_COST" Type="Decimal" />
                <asp:Parameter Name="original_RECOMMENDATION" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="APP_ID" Type="Decimal" />
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="OWNER" Type="String" />
                <asp:Parameter Name="APPOINTMENT_DATE" Type="DateTime" />
                <asp:Parameter Name="DETAILS" Type="String" />
                <asp:Parameter Name="VET_NAME" Type="String" />
                <asp:Parameter Name="COST_OF_APPOINTMENT" Type="Decimal" />
                <asp:Parameter Name="PRESCRIPTION_NUMBER" Type="Decimal" />
                <asp:Parameter Name="DRUG" Type="String" />
                <asp:Parameter Name="DRUG_COST" Type="Decimal" />
                <asp:Parameter Name="RECOMMENDATION" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="OWNER" Type="String" />
                <asp:Parameter Name="APPOINTMENT_DATE" Type="DateTime" />
                <asp:Parameter Name="DETAILS" Type="String" />
                <asp:Parameter Name="VET_NAME" Type="String" />
                <asp:Parameter Name="COST_OF_APPOINTMENT" Type="Decimal" />
                <asp:Parameter Name="PRESCRIPTION_NUMBER" Type="Decimal" />
                <asp:Parameter Name="DRUG" Type="String" />
                <asp:Parameter Name="DRUG_COST" Type="Decimal" />
                <asp:Parameter Name="RECOMMENDATION" Type="String" />
                <asp:Parameter Name="original_APP_ID" Type="Decimal" />
                <asp:Parameter Name="original_NAME" Type="String" />
                <asp:Parameter Name="original_OWNER" Type="String" />
                <asp:Parameter Name="original_APPOINTMENT_DATE" Type="DateTime" />
                <asp:Parameter Name="original_DETAILS" Type="String" />
                <asp:Parameter Name="original_VET_NAME" Type="String" />
                <asp:Parameter Name="original_COST_OF_APPOINTMENT" Type="Decimal" />
                <asp:Parameter Name="original_PRESCRIPTION_NUMBER" Type="Decimal" />
                <asp:Parameter Name="original_DRUG" Type="String" />
                <asp:Parameter Name="original_DRUG_COST" Type="Decimal" />
                <asp:Parameter Name="original_RECOMMENDATION" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;PETNAME&quot; FROM &quot;PET&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" OnSelecting="SqlDataSource2_Selecting" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;OWNERNAME&quot; FROM &quot;OWNER&quot;"></asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;NAME&quot; FROM &quot;TBL_VET&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT &quot;NAME&quot; FROM &quot;TBL_DRUG&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;PETNAME&quot; FROM &quot;PET&quot;"></asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;OWNERNAME&quot; FROM &quot;OWNER&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;NAME&quot; FROM &quot;TBL_VET&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;PRESCRIPTION_ID&quot; FROM &quot;TBL_PRESCRIPTION&quot;"></asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;PRESCRIPTION_ID&quot; FROM &quot;TBL_PRESCRIPTION&quot;"></asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;NAME&quot; FROM &quot;TBL_DRUG&quot;"></asp:SqlDataSource>
    </p>
    <h2>
        APPOINTMENT DETAILS:</h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="APP_ID" DataSourceID="AppDetails" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="APP_ID" HeaderText="ID" ReadOnly="True" SortExpression="APP_ID" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="OWNER" HeaderText="OWNER" SortExpression="OWNER" />
                <asp:BoundField DataField="APPOINTMENT_DATE" HeaderText="DATE" SortExpression="APPOINTMENT_DATE" />
                <asp:BoundField DataField="DETAILS" HeaderText="DETAILS" SortExpression="DETAILS" />
                <asp:BoundField DataField="VET_NAME" HeaderText="NAME" SortExpression="VET_NAME" />
                <asp:BoundField DataField="COST_OF_APPOINTMENT" HeaderText="APP COST" SortExpression="COST_OF_APPOINTMENT" />
                <asp:BoundField DataField="PRESCRIPTION_NUMBER" HeaderText="PRESCRIPTION NO" SortExpression="PRESCRIPTION_NUMBER" />
                <asp:BoundField DataField="DRUG" HeaderText="DRUG" SortExpression="DRUG" />
                <asp:BoundField DataField="DRUG_COST" HeaderText="DRUG COST" SortExpression="DRUG_COST" />
                <asp:BoundField DataField="RECOMMENDATION" HeaderText="RECOMMENDATION" SortExpression="RECOMMENDATION" />
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
        <asp:SqlDataSource ID="AppDetails" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" DeleteCommand="DELETE FROM &quot;TBL_APPOINTMENT&quot; WHERE &quot;APP_ID&quot; = :original_APP_ID AND &quot;NAME&quot; = :original_NAME AND &quot;OWNER&quot; = :original_OWNER AND &quot;APPOINTMENT_DATE&quot; = :original_APPOINTMENT_DATE AND ((&quot;DETAILS&quot; = :original_DETAILS) OR (&quot;DETAILS&quot; IS NULL AND :original_DETAILS IS NULL)) AND &quot;VET_NAME&quot; = :original_VET_NAME AND &quot;COST_OF_APPOINTMENT&quot; = :original_COST_OF_APPOINTMENT AND &quot;PRESCRIPTION_NUMBER&quot; = :original_PRESCRIPTION_NUMBER AND &quot;DRUG&quot; = :original_DRUG AND &quot;DRUG_COST&quot; = :original_DRUG_COST AND ((&quot;RECOMMENDATION&quot; = :original_RECOMMENDATION) OR (&quot;RECOMMENDATION&quot; IS NULL AND :original_RECOMMENDATION IS NULL))" InsertCommand="INSERT INTO &quot;TBL_APPOINTMENT&quot; (&quot;APP_ID&quot;, &quot;NAME&quot;, &quot;OWNER&quot;, &quot;APPOINTMENT_DATE&quot;, &quot;DETAILS&quot;, &quot;VET_NAME&quot;, &quot;COST_OF_APPOINTMENT&quot;, &quot;PRESCRIPTION_NUMBER&quot;, &quot;DRUG&quot;, &quot;DRUG_COST&quot;, &quot;RECOMMENDATION&quot;) VALUES (:APP_ID, :NAME, :OWNER, :APPOINTMENT_DATE, :DETAILS, :VET_NAME, :COST_OF_APPOINTMENT, :PRESCRIPTION_NUMBER, :DRUG, :DRUG_COST, :RECOMMENDATION)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT * FROM &quot;TBL_APPOINTMENT&quot;" UpdateCommand="UPDATE &quot;TBL_APPOINTMENT&quot; SET &quot;NAME&quot; = :NAME, &quot;OWNER&quot; = :OWNER, &quot;APPOINTMENT_DATE&quot; = :APPOINTMENT_DATE, &quot;DETAILS&quot; = :DETAILS, &quot;VET_NAME&quot; = :VET_NAME, &quot;COST_OF_APPOINTMENT&quot; = :COST_OF_APPOINTMENT, &quot;PRESCRIPTION_NUMBER&quot; = :PRESCRIPTION_NUMBER, &quot;DRUG&quot; = :DRUG, &quot;DRUG_COST&quot; = :DRUG_COST, &quot;RECOMMENDATION&quot; = :RECOMMENDATION WHERE &quot;APP_ID&quot; = :original_APP_ID AND &quot;NAME&quot; = :original_NAME AND &quot;OWNER&quot; = :original_OWNER AND &quot;APPOINTMENT_DATE&quot; = :original_APPOINTMENT_DATE AND ((&quot;DETAILS&quot; = :original_DETAILS) OR (&quot;DETAILS&quot; IS NULL AND :original_DETAILS IS NULL)) AND &quot;VET_NAME&quot; = :original_VET_NAME AND &quot;COST_OF_APPOINTMENT&quot; = :original_COST_OF_APPOINTMENT AND &quot;PRESCRIPTION_NUMBER&quot; = :original_PRESCRIPTION_NUMBER AND &quot;DRUG&quot; = :original_DRUG AND &quot;DRUG_COST&quot; = :original_DRUG_COST AND ((&quot;RECOMMENDATION&quot; = :original_RECOMMENDATION) OR (&quot;RECOMMENDATION&quot; IS NULL AND :original_RECOMMENDATION IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_APP_ID" Type="Decimal" />
                <asp:Parameter Name="original_NAME" Type="String" />
                <asp:Parameter Name="original_OWNER" Type="String" />
                <asp:Parameter Name="original_APPOINTMENT_DATE" Type="DateTime" />
                <asp:Parameter Name="original_DETAILS" Type="String" />
                <asp:Parameter Name="original_VET_NAME" Type="String" />
                <asp:Parameter Name="original_COST_OF_APPOINTMENT" Type="Decimal" />
                <asp:Parameter Name="original_PRESCRIPTION_NUMBER" Type="Decimal" />
                <asp:Parameter Name="original_DRUG" Type="String" />
                <asp:Parameter Name="original_DRUG_COST" Type="Decimal" />
                <asp:Parameter Name="original_RECOMMENDATION" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="APP_ID" Type="Decimal" />
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="OWNER" Type="String" />
                <asp:Parameter Name="APPOINTMENT_DATE" Type="DateTime" />
                <asp:Parameter Name="DETAILS" Type="String" />
                <asp:Parameter Name="VET_NAME" Type="String" />
                <asp:Parameter Name="COST_OF_APPOINTMENT" Type="Decimal" />
                <asp:Parameter Name="PRESCRIPTION_NUMBER" Type="Decimal" />
                <asp:Parameter Name="DRUG" Type="String" />
                <asp:Parameter Name="DRUG_COST" Type="Decimal" />
                <asp:Parameter Name="RECOMMENDATION" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="OWNER" Type="String" />
                <asp:Parameter Name="APPOINTMENT_DATE" Type="DateTime" />
                <asp:Parameter Name="DETAILS" Type="String" />
                <asp:Parameter Name="VET_NAME" Type="String" />
                <asp:Parameter Name="COST_OF_APPOINTMENT" Type="Decimal" />
                <asp:Parameter Name="PRESCRIPTION_NUMBER" Type="Decimal" />
                <asp:Parameter Name="DRUG" Type="String" />
                <asp:Parameter Name="DRUG_COST" Type="Decimal" />
                <asp:Parameter Name="RECOMMENDATION" Type="String" />
                <asp:Parameter Name="original_APP_ID" Type="Decimal" />
                <asp:Parameter Name="original_NAME" Type="String" />
                <asp:Parameter Name="original_OWNER" Type="String" />
                <asp:Parameter Name="original_APPOINTMENT_DATE" Type="DateTime" />
                <asp:Parameter Name="original_DETAILS" Type="String" />
                <asp:Parameter Name="original_VET_NAME" Type="String" />
                <asp:Parameter Name="original_COST_OF_APPOINTMENT" Type="Decimal" />
                <asp:Parameter Name="original_PRESCRIPTION_NUMBER" Type="Decimal" />
                <asp:Parameter Name="original_DRUG" Type="String" />
                <asp:Parameter Name="original_DRUG_COST" Type="Decimal" />
                <asp:Parameter Name="original_RECOMMENDATION" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
