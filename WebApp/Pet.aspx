<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Pet.aspx.cs" Inherits="Pet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;</h2>
    <h2>INSERT PET DETAILS:</h2>
    
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="PET_ID" DataSourceID="DSpet" Height="50px" Width="125px" DefaultMode="Insert" CellPadding="4" ForeColor="#333333" GridLines="None" ValidateRequestMode="Enabled">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:TemplateField HeaderText="PET_ID" SortExpression="PET_ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("PET_ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <InsertItemTemplate>                       
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PET_ID") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="PET ID CAN'T BE NULL"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("PET_ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PETNAME" SortExpression="PETNAME">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PETNAME") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                       
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PETNAME") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" runat="server" ErrorMessage="PET NAME CAN'T BE NULL"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("PETNAME") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PETTYPE" SortExpression="PETTYPE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("PETTYPE") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PETTYPE") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3" runat="server" ErrorMessage="PET TYPE CAN'T BE NULL"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("PETTYPE") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="PETBREED" HeaderText="PETBREED" SortExpression="PETBREED" ValidateRequestMode="Enabled" />
                <asp:BoundField DataField="PETSEX" HeaderText="PETSEX" SortExpression="PETSEX" ValidateRequestMode="Enabled" />
                <asp:TemplateField HeaderText="PETDOB" SortExpression="PETDOB" ValidateRequestMode="Enabled">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PETDOB") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" SelectedDate='<%# Bind("PETDOB") %>' Width="330px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                            <DayStyle BackColor="#CCCCCC" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                            <TodayDayStyle BackColor="#999999" ForeColor="White" />
                        </asp:Calendar>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("PETDOB") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="PETNOTE" HeaderText="PETNOTE" SortExpression="PETNOTE" ValidateRequestMode="Enabled" />
                <asp:TemplateField HeaderText="OWNER_ID" SortExpression="OWNER_ID" ValidateRequestMode="Enabled">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("OWNER_ID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="OWNER_ID" DataValueField="OWNER_ID" SelectedValue='<%# Bind("OWNER_ID") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("OWNER_ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;OWNER_ID&quot; FROM &quot;OWNER&quot;"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <h2>Show all Pets Details:</h2>
    <div style="overflow:scroll">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PET_ID" DataSourceID="DSpet" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" ValidateRequestMode="Enabled">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="PET_ID" HeaderText="PET_ID" ReadOnly="True" SortExpression="PET_ID" ValidateRequestMode="Enabled" />
                <asp:BoundField DataField="PETNAME" HeaderText="PETNAME" SortExpression="PETNAME" ValidateRequestMode="Enabled" />
                <asp:BoundField DataField="PETTYPE" HeaderText="PETTYPE" SortExpression="PETTYPE" ValidateRequestMode="Enabled" />
                <asp:BoundField DataField="PETBREED" HeaderText="PETBREED" SortExpression="PETBREED" ValidateRequestMode="Enabled" />
                <asp:BoundField DataField="PETSEX" HeaderText="PETSEX" SortExpression="PETSEX" ValidateRequestMode="Enabled" />
                <asp:TemplateField HeaderText="PETDOB" SortExpression="PETDOB" ValidateRequestMode="Enabled">
                    <EditItemTemplate>
                        <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" SelectedDate='<%# Bind("PETDOB") %>' Width="330px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                            <DayStyle BackColor="#CCCCCC" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                            <TodayDayStyle BackColor="#999999" ForeColor="White" />
                        </asp:Calendar>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("PETDOB") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="PETNOTE" HeaderText="PETNOTE" SortExpression="PETNOTE" ValidateRequestMode="Enabled" />
                <asp:TemplateField HeaderText="OWNER_ID" SortExpression="OWNER_ID" ValidateRequestMode="Enabled">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="OWNER_ID" DataValueField="OWNER_ID" SelectedValue='<%# Bind("OWNER_ID") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("OWNER_ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
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
        <asp:SqlDataSource ID="DSpet" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT * FROM &quot;PET&quot;" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM &quot;PET&quot; WHERE &quot;PET_ID&quot; = :original_PET_ID AND &quot;PETNAME&quot; = :original_PETNAME AND ((&quot;PETTYPE&quot; = :original_PETTYPE) OR (&quot;PETTYPE&quot; IS NULL AND :original_PETTYPE IS NULL)) AND ((&quot;PETBREED&quot; = :original_PETBREED) OR (&quot;PETBREED&quot; IS NULL AND :original_PETBREED IS NULL)) AND ((&quot;PETSEX&quot; = :original_PETSEX) OR (&quot;PETSEX&quot; IS NULL AND :original_PETSEX IS NULL)) AND ((&quot;PETDOB&quot; = :original_PETDOB) OR (&quot;PETDOB&quot; IS NULL AND :original_PETDOB IS NULL)) AND ((&quot;PETNOTE&quot; = :original_PETNOTE) OR (&quot;PETNOTE&quot; IS NULL AND :original_PETNOTE IS NULL)) AND &quot;OWNER_ID&quot; = :original_OWNER_ID" InsertCommand="INSERT INTO &quot;PET&quot; (&quot;PET_ID&quot;, &quot;PETNAME&quot;, &quot;PETTYPE&quot;, &quot;PETBREED&quot;, &quot;PETSEX&quot;, &quot;PETDOB&quot;, &quot;PETNOTE&quot;, &quot;OWNER_ID&quot;) VALUES (:PET_ID, :PETNAME, :PETTYPE, :PETBREED, :PETSEX, :PETDOB, :PETNOTE, :OWNER_ID)" UpdateCommand="UPDATE &quot;PET&quot; SET &quot;PETNAME&quot; = :PETNAME, &quot;PETTYPE&quot; = :PETTYPE, &quot;PETBREED&quot; = :PETBREED, &quot;PETSEX&quot; = :PETSEX, &quot;PETDOB&quot; = :PETDOB, &quot;PETNOTE&quot; = :PETNOTE, &quot;OWNER_ID&quot; = :OWNER_ID WHERE &quot;PET_ID&quot; = :original_PET_ID AND &quot;PETNAME&quot; = :original_PETNAME AND ((&quot;PETTYPE&quot; = :original_PETTYPE) OR (&quot;PETTYPE&quot; IS NULL AND :original_PETTYPE IS NULL)) AND ((&quot;PETBREED&quot; = :original_PETBREED) OR (&quot;PETBREED&quot; IS NULL AND :original_PETBREED IS NULL)) AND ((&quot;PETSEX&quot; = :original_PETSEX) OR (&quot;PETSEX&quot; IS NULL AND :original_PETSEX IS NULL)) AND ((&quot;PETDOB&quot; = :original_PETDOB) OR (&quot;PETDOB&quot; IS NULL AND :original_PETDOB IS NULL)) AND ((&quot;PETNOTE&quot; = :original_PETNOTE) OR (&quot;PETNOTE&quot; IS NULL AND :original_PETNOTE IS NULL)) AND &quot;OWNER_ID&quot; = :original_OWNER_ID">
            <DeleteParameters>
                <asp:Parameter Name="original_PET_ID" Type="Decimal" />
                <asp:Parameter Name="original_PETNAME" Type="String" />
                <asp:Parameter Name="original_PETTYPE" Type="String" />
                <asp:Parameter Name="original_PETBREED" Type="String" />
                <asp:Parameter Name="original_PETSEX" Type="String" />
                <asp:Parameter Name="original_PETDOB" Type="DateTime" />
                <asp:Parameter Name="original_PETNOTE" Type="String" />
                <asp:Parameter Name="original_OWNER_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PET_ID" Type="Decimal" />
                <asp:Parameter Name="PETNAME" Type="String" />
                <asp:Parameter Name="PETTYPE" Type="String" />
                <asp:Parameter Name="PETBREED" Type="String" />
                <asp:Parameter Name="PETSEX" Type="String" />
                <asp:Parameter Name="PETDOB" Type="DateTime" />
                <asp:Parameter Name="PETNOTE" Type="String" />
                <asp:Parameter Name="OWNER_ID" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PETNAME" Type="String" />
                <asp:Parameter Name="PETTYPE" Type="String" />
                <asp:Parameter Name="PETBREED" Type="String" />
                <asp:Parameter Name="PETSEX" Type="String" />
                <asp:Parameter Name="PETDOB" Type="DateTime" />
                <asp:Parameter Name="PETNOTE" Type="String" />
                <asp:Parameter Name="OWNER_ID" Type="Decimal" />
                <asp:Parameter Name="original_PET_ID" Type="Decimal" />
                <asp:Parameter Name="original_PETNAME" Type="String" />
                <asp:Parameter Name="original_PETTYPE" Type="String" />
                <asp:Parameter Name="original_PETBREED" Type="String" />
                <asp:Parameter Name="original_PETSEX" Type="String" />
                <asp:Parameter Name="original_PETDOB" Type="DateTime" />
                <asp:Parameter Name="original_PETNOTE" Type="String" />
                <asp:Parameter Name="original_OWNER_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
