<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="InnovationThesis.Account.UserManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-top: 30px">

        <h2>จัดการข้อมูลผู้ใช้งาน</h2>
        <h5>ท่านสามารถแก้ไขข้อมูลผู้ใช้งานระบบได้ที่นี่</h5>
        <a class='btn btn-primary' href='../Account/EditUser'>เพิ่มผู้ใช้งาน&nbsp;<span class='fas fa-user-plus'></span></a>
        <p></p>
        <asp:PlaceHolder runat="server" ID="phTable"></asp:PlaceHolder>
        
        <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css" />
        <script src="//cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#dtBasicExample').DataTable({
                    "oLanguage": {
                        "sSearch": "ค้นหา: ",
                        "sZeroRecords": "ไม่พบรายการที่ค้นหา",
                        "sEmptyTable": "ไม่มีข้อมูล",
                        "sInfo": "ทั้งหมด _TOTAL_ รายการ - รายการที่ _START_ ถึง _END_",
                        "sInfoEmpty": "ไม่มีข้อมูล",
                        "sLengthMenu": "แสดง _MENU_ รายการ",
                         "sInfoFiltered": "(กรองจาก _MAX_ รายการ)",
                        "oPaginate": {
                            "sNext": "ถัดไป",
                            "sPrevious": "ก่อนหน้า"
                        }
                    }
                });
            });

            new $.fn.dataTable.Buttons(table, {
                buttons: [
                    'copy', 'excel', 'pdf'
                ]
            });
        </script>

    </div>
</asp:Content>
