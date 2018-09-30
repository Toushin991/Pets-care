<%@ Page Language="C#"MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Vet.aspx.cs" Inherits="Vet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="VET_ID" DataSourceID="DSvet" ForeColor="#333333" GridLines="None" AllowPaging="True" ValidateRequestMode="Enabled">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="VET_ID" HeaderText="VET_ID" ReadOnly="True" SortExpression="VET_ID" />
                <asp:BoundField DataField="VET_NAME" HeaderText="VET_NAME" SortExpression="VET_NAME" />
                <asp:BoundField DataField="PHONE_NO" HeaderText="PHONE_NO" SortExpression="PHONE_NO" />
                <asp:BoundField DataField="ROOM_NO" HeaderText="ROOM_NO" SortExpression="ROOM_NO" />
                <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
    </p>
    <h2>
        SHOW ALL VET DETAILS:</h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="VET_ID" DataSourceID="DSvet" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="VET_ID" HeaderText="VET_ID" ReadOnly="True" SortExpression="VET_ID" />
                <asp:BoundField DataField="VET_NAME" HeaderText="VET_NAME" SortExpression="VET_NAME" />
                <asp:BoundField DataField="PHONE_NO" HeaderText="PHONE_NO" SortExpression="PHONE_NO" />
                <asp:BoundField DataField="ROOM_NO" HeaderText="ROOM_NO" SortExpression="ROOM_NO" />
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
        <asp:SqlDataSource ID="DSvet" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT * FROM &quot;TBL_VET&quot;" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM &quot;TBL_VET&quot; WHERE &quot;VET_ID&quot; = :original_VET_ID AND &quot;VET_NAME&quot; = :original_VET_NAME AND ((&quot;PHONE_NO&quot; = :original_PHONE_NO) OR (&quot;PHONE_NO&quot; IS NULL AND :original_PHONE_NO IS NULL)) AND ((&quot;ROOM_NO&quot; = :original_ROOM_NO) OR (&quot;ROOM_NO&quot; IS NULL AND :original_ROOM_NO IS NULL))" InsertCommand="INSERT INTO &quot;TBL_VET&quot; (&quot;VET_ID&quot;, &quot;VET_NAME&quot;, &quot;PHONE_NO&quot;, &quot;ROOM_NO&quot;) VALUES (:VET_ID, :VET_NAME, :PHONE_NO, :ROOM_NO)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE TBL_VET SET VET_NAME = :VET_NAME, PHONE_NO = :PHONE_NO, ROOM_NO = :ROOM_NO WHERE (VET_ID = :original_VET_ID) AND (VET_NAME = :original_VET_NAME) AND (PHONE_NO = :original_PHONE_NO) AND (ROOM_NO = :original_ROOM_NO) OR (VET_ID = :original_VET_ID) AND (VET_NAME = :original_VET_NAME) AND (PHONE_NO IS NULL) AND (ROOM_NO = :original_ROOM_NO) AND (:original_PHONE_NO IS NULL) OR (VET_ID = :original_VET_ID) AND (VET_NAME = :original_VET_NAME) AND (PHONE_NO = :original_PHONE_NO) AND (ROOM_NO IS NULL) AND (:original_ROOM_NO IS NULL) OR (VET_ID = :original_VET_ID) AND (VET_NAME = :original_VET_NAME) AND (PHONE_NO IS NULL) AND (ROOM_NO IS NULL) AND (:original_PHONE_NO IS NULL) AND (:original_ROOM_NO IS NULL)" ValidateRequestMode="Enabled">
            <DeleteParameters>
                <asp:Parameter Name="original_VET_ID" Type="Decimal" />
                <asp:Parameter Name="original_VET_NAME" Type="String" />
                <asp:Parameter Name="original_PHONE_NO" Type="String" />
                <asp:Parameter Name="original_ROOM_NO" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="VET_ID" Type="Decimal" />
                <asp:Parameter Name="VET_NAME" Type="String" />
                <asp:Parameter Name="PHONE_NO" Type="String" />
                <asp:Parameter Name="ROOM_NO" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="VET_NAME" Type="String" />
                <asp:Parameter Name="PHONE_NO" Type="String" />
                <asp:Parameter Name="ROOM_NO" Type="Decimal" />
                <asp:Parameter Name="original_VET_ID" Type="Decimal" />
                <asp:Parameter Name="original_VET_NAME" Type="String" />
                <asp:Parameter Name="original_PHONE_NO" Type="String" />
                <asp:Parameter Name="original_ROOM_NO" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PetDataContext %>" ProviderName="<%$ ConnectionStrings:PetDataContext.ProviderName %>" SelectCommand="SELECT * FROM &quot;TBL_VET&quot; WHERE (&quot;VET_ID&quot; = :VET_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="VET_ID" PropertyName="SelectedValue" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
    </p>
</asp:Content>
