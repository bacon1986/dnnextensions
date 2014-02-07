﻿<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ViewContacts.ascx.vb" Inherits="WillStrohl.Modules.ContactCollector.ViewContacts" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<div class="dnnClear">
    <div class="dnnClear">
        <asp:GridView ID="grdContact" runat="server" AllowPaging="true" AllowSorting="true" AutoGenerateColumns="false" 
            AutoGenerateDeleteButton="true" CssClass="dnnGrid" DataKeyNames="ContactId" PageSize="10" Width="100%">
            <Columns>
                <asp:BoundField DataField="ContactId" HeaderText="ContactId" Visible="false" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" />
                <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" />
                <asp:BoundField DataField="Comment" HeaderText="Comment" />
            </Columns>
            <HeaderStyle CssClass="dnnGridHeader" />
            <RowStyle CssClass="dnnGridItem" />
            <AlternatingRowStyle CssClass="dnnGridAltItem" />
            <FooterStyle CssClass="dnnGridItem" />
        </asp:GridView>
    </div>
    <div id="divExport" class="dnnForm dnnEditEntry dnnClear">
        <div class="dnnFormItem">
            <dnn:Label ID="lblExport" runat="server" ControlName="cboExport" ResourceKey="lblExport" Suffix=":" />
            <asp:DropDownList ID="cboExport" runat="server" ValidationGroup="Export" CssClass="NormalTextBox dnnFormRequired" /> 
            <asp:RequiredFieldValidator ID="rfvExport" runat="server" ControlToValidate="cboExport" CssClass="dnnFormMessage dnnFormError" 
                Display="Dynamic" InitialValue="---" ValidationGroup="Export" /> 
            <asp:LinkButton ID="lnkExport" runat="server" CssClass="dnnSecondaryAction" CausesValidation="true" ValidationGroup="Export" />
        </div>
    </div>
    <div id="divCommands" class="dnnClear">
        <asp:LinkButton ID="cmdReturn" runat="server" CssClass="dnnPrimaryAction" CausesValidation="false" />
    </div>
</div>