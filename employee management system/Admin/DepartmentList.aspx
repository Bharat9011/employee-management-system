<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="DepartmentList.aspx.cs" Inherits="employee_management_system.Admin.DepartmentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5 ms-3 me-3 pt-3 bg-white rounded shadow">

        <div class="h1 text-center mb-3">Depatment List</div>

        <div class="p-3">
 
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" CssClass="table text-center table-bordered table-hover table-striped table-responsive">
                <Columns>

                    <asp:TemplateField HeaderText="ID">

                        <EditItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        </EditItemTemplate>

                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" style="text-align: center" Text='<%# Eval("id") %>'></asp:Label>
                        </ItemTemplate>

                        <ItemStyle HorizontalAlign="Center" />

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Department Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("DepartmentName") %>' CssClass="form-control"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DepartmentName") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Operation">
                        <EditItemTemplate>
                            <asp:Button ID="Button3" runat="server" CommandName="Update" Text="Update" CssClass="btn btn-info" />
                            <asp:Button ID="Button4" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CommandName="Edit" Text="Edit" CssClass="btn btn-success" />
                            <asp:Button ID="Button2" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger ms-2" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SQLConnection %>" DeleteCommand="DELETE FROM [DepartmentTable] WHERE [id] = @id" InsertCommand="INSERT INTO [DepartmentTable] ([DepartmentName]) VALUES (@DepartmentName)" SelectCommand="SELECT * FROM [DepartmentTable]" UpdateCommand="UPDATE [DepartmentTable] SET [DepartmentName] = @DepartmentName WHERE [id] = @id">

                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>

                <InsertParameters>
                    <asp:Parameter Name="DepartmentName" Type="String" />
                </InsertParameters>

                <UpdateParameters>
                    <asp:Parameter Name="DepartmentName" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>

            </asp:SqlDataSource>

        </div>
    </div>
</asp:Content>
