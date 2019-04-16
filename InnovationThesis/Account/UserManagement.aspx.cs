using InnovationThesis.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InnovationThesis.Account
{
    public partial class UserManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            

            List<Users> users = DBControl.getUserList();
            if(true)
            {
                StringBuilder builder = new StringBuilder();
                builder.Append("<table id='dtBasicExample' class='table table-striped table-bordered' style='font-size:15px;'>");
                builder.Append("<thead><tr>");
                builder.Append("<th scope='col' style='text-align:center;'>ชื่อผู้ใช้งาน</th>");
                builder.Append("<th style='text-align:center;' width=100px'>สถานะผู้ใช้งาน</th>");
                builder.Append("<th style='text-align:center;' width='100px'>ประเภทผูใช้งาน</th>");
                builder.Append("<th style='text-align:center;' width='100px'>แก้ไขข้อมูล</th>");
                builder.Append("</tr></thead>");
               

                foreach(var user in users)
                {
                    builder.Append("<tr>");
                    builder.Append(String.Format("<th scope='row'>{0} ({1})</th>",user.username, user.name));
                    
                    string sBadge = (user.status == "ACTIVE") ?
                        "<span class='badge badge-pill badge-success'>ใช้งานได้</span>" :
                        "<span class='badge badge-pill badge-secondary'>พักการใช้งาน</span>";

                    builder.Append(String.Format("<td style='text-align:center;'>{0}</td>", sBadge));

                    sBadge = (user.userType == "1") ? "ผู้ดูแลระบบ" : "ผู้ใช้ทั่วไป";

                    builder.Append(String.Format("<td style='text-align:center;'>{0}</td>", sBadge));
                    builder.Append(String.Format("<td style='text-align:center;'><a class='btn btn-default' style='padding:0;' href='../Account/EditUser?userId={0}'>แก้ไขข้อมูล <span class='fas fa-edit'></span></a></td>", user.username));
                    builder.Append("</tr>");

                }
                

                builder.Append("</table>");
                
                phTable.Controls.Add(new LiteralControl(builder.ToString()));
                
                

            }
            

        }
    }
}