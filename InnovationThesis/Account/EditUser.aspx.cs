using InnovationThesis.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InnovationThesis.Account
{
    public partial class EditUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userId = Request.QueryString["userId"];
            if (userId == null)
            {
                phTitle.Controls.Clear();
                phTitle.Controls.Add(new LiteralControl("เพิ่มผู้ใช้งาน"));
                btnUpdate.Visible = false;
                btnCreate.Visible = true;
            }
            else
            {
                phTitle.Controls.Clear();
                phTitle.Controls.Add(new LiteralControl("แก้ไขผู้ใช้งาน"));
                btnUpdate.Visible = true;
                btnCreate.Visible = false;
            }

            if (!Page.IsPostBack)
            {

                switchToggle2.Value = "true";
                if (userId == null)
                {
                    phTitle.Controls.Clear();
                    phTitle.Controls.Add(new LiteralControl("เพิ่มผู้ใช้งาน"));
                }
                else
                {
                    phTitle.Controls.Clear();
                    phTitle.Controls.Add(new LiteralControl("แก้ไขผู้ใช้งาน"));
                    List<Users> users = DBControl.getUserList(userId);

                    if (users.Count <= 0)
                    {
                        Response.Redirect("../Account/UserManagement");
                    }
                    else
                    {
                        txUser.Enabled = false;
                        txUser.Text = users[0].username;
                        txName.Text = users[0].name;
                        txEmail.Text = users[0].email;

                        switchToggle2.Value = (users[0].status == "ACTIVE") ? "true" : "false";
                        userType.SelectedValue = (users[0].userType == "1") ? "admin" : "user";
                    }
                }
            }
        }

        protected void Unnamed9_Click(object sender, EventArgs e)
        {
            Users users = new Users();
            users.username = txUser.Text;
            users.name = txName.Text;
            users.email = txEmail.Text;
            users.status = (switchToggle2.Value == "true") ? "ACTIVE" : "INACTIVE";
            users.userType = (userType.SelectedValue == "admin") ? "1" : "2";
            MessageResult messageResult = DBControl.updateUser(users);

            switch (messageResult.ErrorCode)
            {
                case ErrorCode.E:
                    SuccessMessage.Visible = false;
                    ErrorMessage.Visible = true;
                    FailureText.Text = messageResult.Message;
                    break;
                case ErrorCode.S:
                    ErrorMessage.Visible = false;
                    SuccessMessage.Visible = true;
                    SuccessText.Text = messageResult.Message;
                    break;
            }
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);

        }

        protected void Unnamed10_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Account/UserManagement");
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            
            Users users = new Users();
            users.username = txUser.Text;
            users.name = txName.Text;
            users.email = txEmail.Text;
            users.status = (switchToggle2.Value == "true") ? "ACTIVE" : "INACTIVE";
            users.userType = (userType.SelectedValue == "admin") ? "1" : "2";
            MessageResult messageResult = DBControl.insertUser(users);

            switch (messageResult.ErrorCode)
            {
                case ErrorCode.E:
                    SuccessMessage_ins.Visible = false;
                    ErrorMessage_ins.Visible = true;
                    FailureText_ins.Text = messageResult.Message;
                    FailBtn.Visible = true;
                    break;
                case ErrorCode.S:
                    ErrorMessage_ins.Visible = false;
                    SuccessMessage_ins.Visible = true;
                    SuccessText_ins.Text = messageResult.Message;
                    FailBtn.Visible = false;
                    break;
            }

            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModalInsert();", true);
        }
    }
}