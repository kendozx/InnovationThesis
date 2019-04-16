using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;
using System.ComponentModel;

namespace InnovationThesis
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClick(object sender, EventArgs e)
        {
            try
            {
                SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
                builder.DataSource = "thesisinnovationdbserver.database.windows.net";
                builder.UserID = "thongpanarak";
                builder.Password = "5023K1n2";
                builder.InitialCatalog = "ThesisInnovationKrit";

                using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
                {
                   connection.Open();
                    StringBuilder sb = new StringBuilder();
                    sb.Append("SELECT * FROM Todoes;");
                    String sql = sb.ToString();


                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                string str = reader[1].ToString();
                                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + str + "');", true);
                                //Console.WriteLine("{0} {1}", , reader.GetString(1));
                            }
                        }
                    }
                }
            }
            catch (SqlException e2)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + e2.ToString() + "');", true);

            }

        }

        protected void xlsDl_Click(object sender, EventArgs e)
        {
            var data = new[]{
                               new{ Name="Ram", Email="ram@techbrij.com", Phone="111-222-3333" },
                               new{ Name="Shyam", Email="shyam@techbrij.com", Phone="159-222-1596" },
                               new{ Name="Mohan", Email="mohan@techbrij.com", Phone="456-222-4569" },
                               new{ Name="Sohan", Email="sohan@techbrij.com", Phone="789-456-3333" },
                               new{ Name="Karan", Email="karan@techbrij.com", Phone="111-222-1234" },
                               new{ Name="Brij", Email="brij@techbrij.com", Phone="111-222-3333" }
                      };

            Response.ClearContent();
            Response.AddHeader("content-disposition", "attachment;filename=Contact.csv");
            Response.AddHeader("Content-Type", "application/vnd.ms-excel");
            WriteTsv(data, Response.Output);
            Response.End();
        }

        public void WriteTsv<T>(IEnumerable<T> data, TextWriter output)
        {
            PropertyDescriptorCollection props = TypeDescriptor.GetProperties(typeof(T));
            foreach (PropertyDescriptor prop in props)
            {
                output.Write(prop.DisplayName); // header
                output.Write(",");
            }
            output.WriteLine();
            foreach (T item in data)
            {
                foreach (PropertyDescriptor prop in props)
                {
                    output.Write(prop.Converter.ConvertToString(
                         prop.GetValue(item)));
                    output.Write(",");
                }
                output.WriteLine();
            }
        }
    }
}