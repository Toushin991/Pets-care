<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Owner.aspx.cs" Inherits="Owner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        &nbsp;</h2>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="OWNER_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="125px" ViewStateMode="Enabled">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="OWNER_ID" HeaderText="ID" ReadOnly="True" SortExpression="OWNER_ID" />
                <asp:BoundField DataField="OWNERTITLE" HeaderText="TITLE" SortExpression="OWNERTITLE" />
                <asp:BoundField DataField="OWNERNAME" HeaderText="NAME" SortExpression="OWNERNAME" />
                <asp:BoundField DataField="OWNERADDR" HeaderText="ADDRESS" SortExpression="OWNERADDR" />
                <asp:BoundField DataField="OWNERPOC" HeaderText="POST CODE" SortExpression="OWNERPOC" />
                <asp:BoundField DataField="OWNERTEL" HeaderText="PHONE" SortExpression="OWNERTEL" />
                <asp:BoundField DataField="OWNERNOTE" HeaderText="NOTE" SortExpression="OWNERNOTE" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" DeleteCommand="DELETE FROM &quot;OWNER&quot; WHERE &quot;OWNER_ID&quot; = :original_OWNER_ID AND &quot;OWNERTITLE&quot; = :original_OWNERTITLE AND &quot;OWNERNAME&quot; = :original_OWNERNAME AND ((&quot;OWNERADDR&quot; = :original_OWNERADDR) OR (&quot;OWNERADDR&quot; IS NULL AND :original_OWNERADDR IS NULL)) AND ((&quot;OWNERPOC&quot; = :original_OWNERPOC) OR (&quot;OWNERPOC&quot; IS NULL AND :original_OWNERPOC IS NULL)) AND ((&quot;OWNERTEL&quot; = :original_OWNERTEL) OR (&quot;OWNERTEL&quot; IS NULL AND :original_OWNERTEL IS NULL)) AND ((&quot;OWNERNOTE&quot; = :original_OWNERNOTE) OR (&quot;OWNERNOTE&quot; IS NULL AND :original_OWNERNOTE IS NULL))" InsertCommand="INSERT INTO &quot;OWNER&quot; (&quot;OWNER_ID&quot;, &quot;OWNERTITLE&quot;, &quot;OWNERNAME&quot;, &quot;OWNERADDR&quot;, &quot;OWNERPOC&quot;, &quot;OWNERTEL&quot;, &quot;OWNERNOTE&quot;) VALUES (:OWNER_ID, :OWNERTITLE, :OWNERNAME, :OWNERADDR, :OWNERPOC, :OWNERTEL, :OWNERNOTE)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT * FROM &quot;OWNER&quot; WHERE (&quot;OWNER_ID&quot; = :OWNER_ID)" UpdateCommand="UPDATE &quot;OWNER&quot; SET &quot;OWNERTITLE&quot; = :OWNERTITLE, &quot;OWNERNAME&quot; = :OWNERNAME, &quot;OWNERADDR&quot; = :OWNERADDR, &quot;OWNERPOC&quot; = :OWNERPOC, &quot;OWNERTEL&quot; = :OWNERTEL, &quot;OWNERNOTE&quot; = :OWNERNOTE WHERE &quot;OWNER_ID&quot; = :original_OWNER_ID AND &quot;OWNERTITLE&quot; = :original_OWNERTITLE AND &quot;OWNERNAME&quot; = :original_OWNERNAME AND ((&quot;OWNERADDR&quot; = :original_OWNERADDR) OR (&quot;OWNERADDR&quot; IS NULL AND :original_OWNERADDR IS NULL)) AND ((&quot;OWNERPOC&quot; = :original_OWNERPOC) OR (&quot;OWNERPOC&quot; IS NULL AND :original_OWNERPOC IS NULL)) AND ((&quot;OWNERTEL&quot; = :original_OWNERTEL) OR (&quot;OWNERTEL&quot; IS NULL AND :original_OWNERTEL IS NULL)) AND ((&quot;OWNERNOTE&quot; = :original_OWNERNOTE) OR (&quot;OWNERNOTE&quot; IS NULL AND :original_OWNERNOTE IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_OWNER_ID" Type="Decimal" />
                <asp:Parameter Name="original_OWNERTITLE" Type="String" />
                <asp:Parameter Name="original_OWNERNAME" Type="String" />
                <asp:Parameter Name="original_OWNERADDR" Type="String" />
                <asp:Parameter Name="original_OWNERPOC" Type="String" />
                <asp:Parameter Name="original_OWNERTEL" Type="Decimal" />
                <asp:Parameter Name="original_OWNERNOTE" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="OWNER_ID" Type="Decimal" />
                <asp:Parameter Name="OWNERTITLE" Type="String" />
                <asp:Parameter Name="OWNERNAME" Type="String" />
                <asp:Parameter Name="OWNERADDR" Type="String" />
                <asp:Parameter Name="OWNERPOC" Type="String" />
                <asp:Parameter Name="OWNERTEL" Type="Decimal" />
                <asp:Parameter Name="OWNERNOTE" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="OWNER_ID" PropertyName="SelectedValue" Type="Decimal" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="OWNERTITLE" Type="String" />
                <asp:Parameter Name="OWNERNAME" Type="String" />
                <asp:Parameter Name="OWNERADDR" Type="String" />
                <asp:Parameter Name="OWNERPOC" Type="String" />
                <asp:Parameter Name="OWNERTEL" Type="Decimal" />
                <asp:Parameter Name="OWNERNOTE" Type="String" />
                <asp:Parameter Name="original_OWNER_ID" Type="Decimal" />
                <asp:Parameter Name="original_OWNERTITLE" Type="String" />
                <asp:Parameter Name="original_OWNERNAME" Type="String" />
                <asp:Parameter Name="original_OWNERADDR" Type="String" />
                <asp:Parameter Name="original_OWNERPOC" Type="String" />
                <asp:Parameter Name="original_OWNERTEL" Type="Decimal" />
                <asp:Parameter Name="original_OWNERNOTE" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="OWNER_ID" DataSourceID="DSowner" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="OWNER_ID" HeaderText="ID" ReadOnly="True" SortExpression="OWNER_ID" />
                    <asp:BoundField DataField="OWNERTITLE" HeaderText="TITLE" SortExpression="OWNERTITLE" />
                    <asp:BoundField DataField="OWNERNAME" HeaderText="NAME" SortExpression="OWNERNAME" />
                    <asp:BoundField DataField="OWNERADDR" HeaderText="ADDRESS" SortExpression="OWNERADDR" />
                    <asp:BoundField DataField="OWNERPOC" HeaderText="POST CODE" SortExpression="OWNERPOC" />
                    <asp:BoundField DataField="OWNERTEL" HeaderText="PHONE" SortExpression="OWNERTEL" />
                    <asp:BoundField DataField="OWNERNOTE" HeaderText="NOTE" SortExpression="OWNERNOTE" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" DeleteCommand="DELETE FROM &quot;OWNER&quot; WHERE &quot;OWNER_ID&quot; = :original_OWNER_ID AND &quot;OWNERTITLE&quot; = :original_OWNERTITLE AND &quot;OWNERNAME&quot; = :original_OWNERNAME AND ((&quot;OWNERADDR&quot; = :original_OWNERADDR) OR (&quot;OWNERADDR&quot; IS NULL AND :original_OWNERADDR IS NULL)) AND ((&quot;OWNERPOC&quot; = :original_OWNERPOC) OR (&quot;OWNERPOC&quot; IS NULL AND :original_OWNERPOC IS NULL)) AND ((&quot;OWNERTEL&quot; = :original_OWNERTEL) OR (&quot;OWNERTEL&quot; IS NULL AND :original_OWNERTEL IS NULL)) AND ((&quot;OWNERNOTE&quot; = :original_OWNERNOTE) OR (&quot;OWNERNOTE&quot; IS NULL AND :original_OWNERNOTE IS NULL))" InsertCommand="INSERT INTO &quot;OWNER&quot; (&quot;OWNER_ID&quot;, &quot;OWNERTITLE&quot;, &quot;OWNERNAME&quot;, &quot;OWNERADDR&quot;, &quot;OWNERPOC&quot;, &quot;OWNERTEL&quot;, &quot;OWNERNOTE&quot;) VALUES (:OWNER_ID, :OWNERTITLE, :OWNERNAME, :OWNERADDR, :OWNERPOC, :OWNERTEL, :OWNERNOTE)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT * FROM &quot;OWNER&quot;" UpdateCommand="UPDATE &quot;OWNER&quot; SET &quot;OWNERTITLE&quot; = :OWNERTITLE, &quot;OWNERNAME&quot; = :OWNERNAME, &quot;OWNERADDR&quot; = :OWNERADDR, &quot;OWNERPOC&quot; = :OWNERPOC, &quot;OWNERTEL&quot; = :OWNERTEL, &quot;OWNERNOTE&quot; = :OWNERNOTE WHERE &quot;OWNER_ID&quot; = :original_OWNER_ID AND &quot;OWNERTITLE&quot; = :original_OWNERTITLE AND &quot;OWNERNAME&quot; = :original_OWNERNAME AND ((&quot;OWNERADDR&quot; = :original_OWNERADDR) OR (&quot;OWNERADDR&quot; IS NULL AND :original_OWNERADDR IS NULL)) AND ((&quot;OWNERPOC&quot; = :original_OWNERPOC) OR (&quot;OWNERPOC&quot; IS NULL AND :original_OWNERPOC IS NULL)) AND ((&quot;OWNERTEL&quot; = :original_OWNERTEL) OR (&quot;OWNERTEL&quot; IS NULL AND :original_OWNERTEL IS NULL)) AND ((&quot;OWNERNOTE&quot; = :original_OWNERNOTE) OR (&quot;OWNERNOTE&quot; IS NULL AND :original_OWNERNOTE IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_OWNER_ID" Type="Decimal" />
                    <asp:Parameter Name="original_OWNERTITLE" Type="String" />
                    <asp:Parameter Name="original_OWNERNAME" Type="String" />
                    <asp:Parameter Name="original_OWNERADDR" Type="String" />
                    <asp:Parameter Name="original_OWNERPOC" Type="String" />
                    <asp:Parameter Name="original_OWNERTEL" Type="Decimal" />
                    <asp:Parameter Name="original_OWNERNOTE" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="OWNER_ID" Type="Decimal" />
                    <asp:Parameter Name="OWNERTITLE" Type="String" />
                    <asp:Parameter Name="OWNERNAME" Type="String" />
                    <asp:Parameter Name="OWNERADDR" Type="String" />
                    <asp:Parameter Name="OWNERPOC" Type="String" />
                    <asp:Parameter Name="OWNERTEL" Type="Decimal" />
                    <asp:Parameter Name="OWNERNOTE" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="OWNERTITLE" Type="String" />
                    <asp:Parameter Name="OWNERNAME" Type="String" />
                    <asp:Parameter Name="OWNERADDR" Type="String" />
                    <asp:Parameter Name="OWNERPOC" Type="String" />
                    <asp:Parameter Name="OWNERTEL" Type="Decimal" />
                    <asp:Parameter Name="OWNERNOTE" Type="String" />
                    <asp:Parameter Name="original_OWNER_ID" Type="Decimal" />
                    <asp:Parameter Name="original_OWNERTITLE" Type="String" />
                    <asp:Parameter Name="original_OWNERNAME" Type="String" />
                    <asp:Parameter Name="original_OWNERADDR" Type="String" />
                    <asp:Parameter Name="original_OWNERPOC" Type="String" />
                    <asp:Parameter Name="original_OWNERTEL" Type="Decimal" />
                    <asp:Parameter Name="original_OWNERNOTE" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;
    </p>
    
    <h2>
        SHOW ALL PET'S OWNER:</h2>
    <p>
        <asp:SqlDataSource ID="DSowner" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT * FROM &quot;OWNER&quot;" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM &quot;OWNER&quot; WHERE &quot;OWNER_ID&quot; = :original_OWNER_ID AND &quot;OWNERTITLE&quot; = :original_OWNERTITLE AND &quot;OWNERNAME&quot; = :original_OWNERNAME AND ((&quot;OWNERADDR&quot; = :original_OWNERADDR) OR (&quot;OWNERADDR&quot; IS NULL AND :original_OWNERADDR IS NULL)) AND ((&quot;OWNERPOC&quot; = :original_OWNERPOC) OR (&quot;OWNERPOC&quot; IS NULL AND :original_OWNERPOC IS NULL)) AND ((&quot;OWNERTEL&quot; = :original_OWNERTEL) OR (&quot;OWNERTEL&quot; IS NULL AND :original_OWNERTEL IS NULL)) AND ((&quot;OWNERNOTE&quot; = :original_OWNERNOTE) OR (&quot;OWNERNOTE&quot; IS NULL AND :original_OWNERNOTE IS NULL))" InsertCommand="INSERT INTO &quot;OWNER&quot; (&quot;OWNER_ID&quot;, &quot;OWNERTITLE&quot;, &quot;OWNERNAME&quot;, &quot;OWNERADDR&quot;, &quot;OWNERPOC&quot;, &quot;OWNERTEL&quot;, &quot;OWNERNOTE&quot;) VALUES (:OWNER_ID, :OWNERTITLE, :OWNERNAME, :OWNERADDR, :OWNERPOC, :OWNERTEL, :OWNERNOTE)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE &quot;OWNER&quot; SET &quot;OWNERTITLE&quot; = :OWNERTITLE, &quot;OWNERNAME&quot; = :OWNERNAME, &quot;OWNERADDR&quot; = :OWNERADDR, &quot;OWNERPOC&quot; = :OWNERPOC, &quot;OWNERTEL&quot; = :OWNERTEL, &quot;OWNERNOTE&quot; = :OWNERNOTE WHERE &quot;OWNER_ID&quot; = :original_OWNER_ID AND &quot;OWNERTITLE&quot; = :original_OWNERTITLE AND &quot;OWNERNAME&quot; = :original_OWNERNAME AND ((&quot;OWNERADDR&quot; = :original_OWNERADDR) OR (&quot;OWNERADDR&quot; IS NULL AND :original_OWNERADDR IS NULL)) AND ((&quot;OWNERPOC&quot; = :original_OWNERPOC) OR (&quot;OWNERPOC&quot; IS NULL AND :original_OWNERPOC IS NULL)) AND ((&quot;OWNERTEL&quot; = :original_OWNERTEL) OR (&quot;OWNERTEL&quot; IS NULL AND :original_OWNERTEL IS NULL)) AND ((&quot;OWNERNOTE&quot; = :original_OWNERNOTE) OR (&quot;OWNERNOTE&quot; IS NULL AND :original_OWNERNOTE IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_OWNER_ID" Type="Decimal" />
                <asp:Parameter Name="original_OWNERTITLE" Type="String" />
                <asp:Parameter Name="original_OWNERNAME" Type="String" />
                <asp:Parameter Name="original_OWNERADDR" Type="String" />
                <asp:Parameter Name="original_OWNERPOC" Type="String" />
                <asp:Parameter Name="original_OWNERTEL" Type="Decimal" />
                <asp:Parameter Name="original_OWNERNOTE" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="OWNER_ID" Type="Decimal" />
                <asp:Parameter Name="OWNERTITLE" Type="String" />
                <asp:Parameter Name="OWNERNAME" Type="String" />
                <asp:Parameter Name="OWNERADDR" Type="String" />
                <asp:Parameter Name="OWNERPOC" Type="String" />
                <asp:Parameter Name="OWNERTEL" Type="Decimal" />
                <asp:Parameter Name="OWNERNOTE" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="OWNERTITLE" Type="String" />
                <asp:Parameter Name="OWNERNAME" Type="String" />
                <asp:Parameter Name="OWNERADDR" Type="String" />
                <asp:Parameter Name="OWNERPOC" Type="String" />
                <asp:Parameter Name="OWNERTEL" Type="Decimal" />
                <asp:Parameter Name="OWNERNOTE" Type="String" />
                <asp:Parameter Name="original_OWNER_ID" Type="Decimal" />
                <asp:Parameter Name="original_OWNERTITLE" Type="String" />
                <asp:Parameter Name="original_OWNERNAME" Type="String" />
                <asp:Parameter Name="original_OWNERADDR" Type="String" />
                <asp:Parameter Name="original_OWNERPOC" Type="String" />
                <asp:Parameter Name="original_OWNERTEL" Type="Decimal" />
                <asp:Parameter Name="original_OWNERNOTE" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OWNER_ID" DataSourceID="DSowner" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="OWNER_ID" HeaderText="ID" ReadOnly="True" SortExpression="OWNER_ID" />
                <asp:BoundField DataField="OWNERTITLE" HeaderText="TITLE" SortExpression="OWNERTITLE" />
                <asp:BoundField DataField="OWNERNAME" HeaderText="NAME" SortExpression="OWNERNAME" />
                <asp:BoundField DataField="OWNERADDR" HeaderText="ADDRESS" SortExpression="OWNERADDR" />
                <asp:BoundField DataField="OWNERPOC" HeaderText="POST CODE" SortExpression="OWNERPOC" />
                <asp:BoundField DataField="OWNERTEL" HeaderText="PHONE" SortExpression="OWNERTEL" />
                <asp:BoundField DataField="OWNERNOTE" HeaderText="NOTE" SortExpression="OWNERNOTE" />
            </Columns>
            <EditRowStyle BackColor="#999999"/>
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
        
    </p>
    
    <p>
        &nbsp;</p>
</asp:Content>