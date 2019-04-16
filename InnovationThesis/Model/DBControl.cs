using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Text;
using System.IO;
using System.ComponentModel;

namespace InnovationThesis.Model
{
    public static class DBControl
    {
        //private static string DataSource = "thesisinnovationdbserver.database.windows.net";
        //private static string UserID = "thongpanarak";
        //private static string Password = "5023K1n2";
        //private static string InitialCatalog = "ThesisInnovationKrit";

        private static string DataSource = "b808ef2f-9638-46ca-8082-aa270138deb8.sqlserver.sequelizer.com";
        private static string UserID = "wvidmqnrzsmdqaaa";
        private static string Password = "wGTYgobo2hzzz6i2JGAyrWaDbHZwEkWJha47R8EMYfownho8GKFgFJRHGoWEvMRQ";
        private static string InitialCatalog = "dbb808ef2f963846ca8082aa270138deb8";

        public static List<Users> getUserList(string userSearch = "")
        {
            List<Users> users = new List<Users>();

            try
            {
                SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
                builder.DataSource = DBControl.DataSource;
                builder.UserID = DBControl.UserID;
                builder.Password = DBControl.Password;
                builder.InitialCatalog = DBControl.InitialCatalog;

                using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
                {
                    connection.Open();
                    StringBuilder sb = new StringBuilder();

                    if (userSearch == "")
                    {
                        sb.Append(String.Format("SELECT * FROM Users;"));
                    }
                    else
                    {
                        sb.Append(String.Format("SELECT * FROM Users WHERE Username = '{0}';", userSearch));
                    }
                        String sql = sb.ToString();

                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                users.Add(new Users()
                                {
                                    username = reader["Username"].ToString(),
                                    email = reader["Email"].ToString(),
                                    status = reader["Status"].ToString(),
                                    userType = reader["UserType"].ToString(),
                                    name = reader["Name"].ToString(),
                                });
                            }
                        }
                    }
                }
            }
            catch (SqlException e2)
            {

            }

            return users;
        }

        public static MessageResult insertUser(Users users)
        {
            MessageResult messageResult = new MessageResult();

            List<Users> usersSearch = getUserList(users.username);
            if(usersSearch.Count > 0)
            {
                messageResult.ErrorCode = ErrorCode.E;
                messageResult.Message = "มีชื่อผู้ใช้งาน " + users.username + " นี้แล้วอยู่ในระบบ";
                return messageResult;
            }

            try
            {
                SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
                builder.DataSource = DBControl.DataSource;
                builder.UserID = DBControl.UserID;
                builder.Password = DBControl.Password;
                builder.InitialCatalog = DBControl.InitialCatalog;

                using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
                {
                    connection.Open();

                    SqlCommand command;
                    SqlDataAdapter adapter = new SqlDataAdapter();
                    String sql = "";

                    sql = String.Format("INSERT INTO Users (Username, Password, Status, UserType, Name, Email) VALUES('{0}','{1}', '{2}','{3}',N'{4}','{5}');",
                            users.username, "init1234", users.status, users.userType, users.name, users.email);

                    command = new SqlCommand(sql, connection);

                    adapter.UpdateCommand = new SqlCommand(sql, connection);
                    adapter.UpdateCommand.ExecuteNonQuery();

                    command.Dispose();
                    connection.Close();
                    messageResult.ErrorCode = ErrorCode.S;
                    messageResult.Message = "สร้างผู้ใช้งานสำเร็จ: " + users.username;
                }
            }
            catch (SqlException e2)
            {
                messageResult.ErrorCode = ErrorCode.E;
                messageResult.Message = "เกิดข้อผิดพลาด! กรุณาติดต่อผู้ดูแลระบบ";

            }

            return messageResult;
        }

        public static MessageResult updateUser(Users users)
        {
            MessageResult messageResult = new MessageResult();

            try
            {
                SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
                builder.DataSource = DBControl.DataSource;
                builder.UserID = DBControl.UserID;
                builder.Password = DBControl.Password;
                builder.InitialCatalog = DBControl.InitialCatalog;

                using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
                {
                    connection.Open();

                    SqlCommand command;
                    SqlDataAdapter adapter = new SqlDataAdapter();
                    String sql = "";

                    sql = String.Format("UPDATE Users SET Status = '{0}', UserType = '{1}', Name = N'{2}', Email = '{3}' WHERE Username = '{4}';",
                            users.status, users.userType, users.name, users.email, users.username);

                    command = new SqlCommand(sql, connection);

                    adapter.UpdateCommand = new SqlCommand(sql, connection);
                    adapter.UpdateCommand.ExecuteNonQuery();

                    command.Dispose();
		            connection.Close();
                    messageResult.ErrorCode = ErrorCode.S;
                    messageResult.Message = "บันทึกข้อมูลสำเร็จ";
                }
            }
            catch (SqlException e2)
            {
                messageResult.ErrorCode = ErrorCode.E;
                messageResult.Message = "เกิดข้อผิดพลาด! กรุณาติดต่อผู้ดูแลระบบ";

            }

            return messageResult;
        }

        public static MessageResult Login(string _username, string _password)
        {
            MessageResult messageResult = new MessageResult();

            try
            {
                SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
                builder.DataSource = DBControl.DataSource;
                builder.UserID = DBControl.UserID;
                builder.Password = DBControl.Password;
                builder.InitialCatalog = DBControl.InitialCatalog;

                using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
                {
                    connection.Open();
                    StringBuilder sb = new StringBuilder();
                    sb.Append(String.Format("SELECT * FROM Users WHERE Username = '{0}';",_username));
                    String sql = sb.ToString();

                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            messageResult.ErrorCode = ErrorCode.E;
                            messageResult.Message = "ข้อมูลผู้ใช้งานหรือรหัสผ่านไม่ถูกต้อง";

                            while (reader.Read())
                            {
                                string sqlUser = reader["Username"].ToString();
                                string sqlPassword = reader["Password"].ToString();

                                if (_username == sqlUser)
                                {
                                    if(_password == sqlPassword)
                                    {
                                        messageResult.ErrorCode = ErrorCode.S;
                                        messageResult.Message = reader["Name"].ToString();
                                        HttpContext.Current.Session["ssUserType"] = reader["UserType"].ToString(); ;
                                    }
                                    break;
                                }
                            }
                        }
                    }
                }
            }
            catch (SqlException e2)
            {
                messageResult.ErrorCode = ErrorCode.E;
                messageResult.Message = "เกิดข้อผิดพลาด! กรุณาติดต่อผู้ดูแลระบบ";

            }

            return messageResult;

        }

        public static MessageResult createEvalResult(EvalResults evalResults)
        {
            MessageResult messageResult = new MessageResult();

            try
            {
                SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
                builder.DataSource = DBControl.DataSource;
                builder.UserID = DBControl.UserID;
                builder.Password = DBControl.Password;
                builder.InitialCatalog = DBControl.InitialCatalog;

                using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
                {
                    connection.Open();

                    SqlCommand command;
                    SqlDataAdapter adapter = new SqlDataAdapter();
                    String sql = "";

                    sql = String.Format("INSERT INTO EvalResult_01 (Username, EvalDate, ANS_1B, ANS_1B_OTHER, ANS_04U1, ANS_04U2, ANS_04U3, ANS_04U4, ANS_11, ANS_12) VALUES(N'{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}'); ",
                            evalResults.username, evalResults.evalDate.ToString("MM/dd/yyyy hh:mm:ss"), evalResults.ans_1b, evalResults.ans_1b_oth, evalResults.ans_04u1, evalResults.ans_04u2, evalResults.ans_04u3, evalResults.ans_04u4, evalResults.ans_11, evalResults.ans_12);

                    command = new SqlCommand(sql, connection);

                    adapter.UpdateCommand = new SqlCommand(sql, connection);
                    adapter.UpdateCommand.ExecuteNonQuery();

                    command.Dispose();
                    connection.Close();
                    messageResult.ErrorCode = ErrorCode.S;
                    messageResult.Message = "บันทึกข้อมูลสำเร็จ";
                }
            }
            catch (SqlException e2)
            {
                messageResult.ErrorCode = ErrorCode.E;
                messageResult.Message = "เกิดข้อผิดพลาด! กรุณาติดต่อผู้ดูแลระบบ";

            }

            return messageResult;
        }

        public static List<EvalResults> getEvalAll()
        {
            List<EvalResults> evalResultsList = new List<EvalResults>();
            EvalResults evalResults = new EvalResults();

            try
            {
                SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
                builder.DataSource = DBControl.DataSource;
                builder.UserID = DBControl.UserID;
                builder.Password = DBControl.Password;
                builder.InitialCatalog = DBControl.InitialCatalog;

                using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
                {
                    connection.Open();
                    StringBuilder sb = new StringBuilder();
                    sb.Append(String.Format("SELECT * FROM dbo.EvalResult_01;"));

                    String sql = sb.ToString();

                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                evalResults = new EvalResults();
                                string ans_04u1, ans_04u2, ans_04u3, ans_04u4;
                                ans_04u1 = reader["ANS_04U1"].ToString();
                                ans_04u2 = reader["ANS_04U2"].ToString();
                                ans_04u3 = reader["ANS_04U3"].ToString();
                                ans_04u4 = reader["ANS_04U4"].ToString();
                                evalResults.username = reader["Username"].ToString();
                                evalResults.evalDate = Convert.ToDateTime(reader["EvalDate"].ToString());

                                evalResults.ans_04u1_01 = ans_04u1[0].ToString();
                                evalResults.ans_04u1_02 = ans_04u1[1].ToString();
                                evalResults.ans_04u1_03 = ans_04u1[2].ToString();
                                evalResults.ans_04u1_04 = ans_04u1[3].ToString();
                                evalResults.ans_04u1_05 = ans_04u1[4].ToString();
                                evalResults.ans_04u1_06 = ans_04u1[5].ToString();
                                evalResults.ans_04u1_07 = ans_04u1[6].ToString();
                                evalResults.ans_04u1_08 = ans_04u1[7].ToString();
                                evalResults.ans_04u1_09 = ans_04u1[8].ToString();
                                evalResults.ans_04u1_10 = ans_04u1[9].ToString();
                                evalResults.ans_04u1_11 = ans_04u1[10].ToString();
                                evalResults.ans_04u1_12 = ans_04u1[11].ToString();
                                evalResults.ans_04u1_13 = ans_04u1[12].ToString();
                                evalResults.ans_04u1_14 = ans_04u1[13].ToString();
                                evalResults.ans_04u1_15 = ans_04u1[14].ToString();
                                evalResults.ans_04u1_16 = ans_04u1[15].ToString();
                                evalResults.ans_04u1_17 = ans_04u1[16].ToString();
                                evalResults.ans_04u1_18 = ans_04u1[17].ToString();
                                evalResults.ans_04u1_19 = ans_04u1[18].ToString();
                                evalResults.ans_04u1_20 = ans_04u1[19].ToString();

                                evalResults.ans_04u2_01 = ans_04u2[0].ToString();
                                evalResults.ans_04u2_02 = ans_04u2[1].ToString();
                                evalResults.ans_04u2_03 = ans_04u2[2].ToString();
                                evalResults.ans_04u2_04 = ans_04u2[3].ToString();
                                evalResults.ans_04u2_05 = ans_04u2[4].ToString();
                                evalResults.ans_04u2_06 = ans_04u2[5].ToString();

                                evalResults.ans_04u3_01 = ans_04u3[0].ToString();
                                evalResults.ans_04u3_02 = ans_04u3[1].ToString();
                                evalResults.ans_04u3_03 = ans_04u3[2].ToString();
                                evalResults.ans_04u3_04 = ans_04u3[3].ToString();
                                evalResults.ans_04u3_05 = ans_04u3[4].ToString();
                                evalResults.ans_04u3_06 = ans_04u3[5].ToString();
                                evalResults.ans_04u3_07 = ans_04u3[6].ToString();

                                evalResults.ans_04u4_01 = ans_04u4[0].ToString();
                                evalResults.ans_04u4_02 = ans_04u4[1].ToString();
                                evalResults.ans_04u4_03 = ans_04u4[2].ToString();
                                evalResults.ans_04u4_04 = ans_04u4[3].ToString();
                                evalResults.ans_04u4_05 = ans_04u4[4].ToString();
                                evalResults.ans_04u4_06 = ans_04u4[5].ToString();
                                evalResults.ans_04u4_07 = ans_04u4[6].ToString();
                                evalResults.ans_04u4_08 = ans_04u4[7].ToString();
                                evalResults.ans_04u4_09 = ans_04u4[8].ToString();
                                evalResults.ans_04u4_10 = ans_04u4[9].ToString();
                                evalResults.ans_04u4_11 = ans_04u4[10].ToString();
                                evalResults.ans_04u4_12 = ans_04u4[11].ToString();
                                evalResults.ans_04u4_13 = ans_04u4[12].ToString();
                                evalResults.ans_04u4_14 = ans_04u4[13].ToString();
                                evalResults.ans_04u4_15 = ans_04u4[14].ToString();

                                evalResultsList.Add(evalResults);
                            }
                        }
                    }
                }
            }
            catch (SqlException e2)
            {

            }

            return evalResultsList;
        }

        public static EvalResults getEval(string userSearch)
        {
            EvalResults evalResults = new EvalResults();

            if (userSearch == "") return evalResults;

            try
            {
                SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
                builder.DataSource = DBControl.DataSource;
                builder.UserID = DBControl.UserID;
                builder.Password = DBControl.Password;
                builder.InitialCatalog = DBControl.InitialCatalog;

                using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
                {
                    connection.Open();
                    StringBuilder sb = new StringBuilder();
                    sb.Append(String.Format("SELECT TOP 1 * FROM dbo.EvalResult_01 WHERE Username = '{0}' ORDER BY EvalDate DESC;", userSearch));

                    String sql = sb.ToString();

                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                string ans_04u1, ans_04u2, ans_04u3, ans_04u4;
                                ans_04u1 = reader["ANS_04U1"].ToString();
                                ans_04u2 = reader["ANS_04U2"].ToString();
                                ans_04u3 = reader["ANS_04U3"].ToString();
                                ans_04u4 = reader["ANS_04U4"].ToString();
                                evalResults.username = reader["Username"].ToString();
                                evalResults.evalDate = Convert.ToDateTime(reader["EvalDate"].ToString());

                                evalResults.ans_04u1_01 = ans_04u1[0].ToString();
                                evalResults.ans_04u1_02 = ans_04u1[1].ToString();
                                evalResults.ans_04u1_03 = ans_04u1[2].ToString();
                                evalResults.ans_04u1_04 = ans_04u1[3].ToString();
                                evalResults.ans_04u1_05 = ans_04u1[4].ToString();
                                evalResults.ans_04u1_06 = ans_04u1[5].ToString();
                                evalResults.ans_04u1_07 = ans_04u1[6].ToString();
                                evalResults.ans_04u1_08 = ans_04u1[7].ToString();
                                evalResults.ans_04u1_09 = ans_04u1[8].ToString();
                                evalResults.ans_04u1_10 = ans_04u1[9].ToString();
                                evalResults.ans_04u1_11 = ans_04u1[10].ToString();
                                evalResults.ans_04u1_12 = ans_04u1[11].ToString();
                                evalResults.ans_04u1_13 = ans_04u1[12].ToString();
                                evalResults.ans_04u1_14 = ans_04u1[13].ToString();
                                evalResults.ans_04u1_15 = ans_04u1[14].ToString();
                                evalResults.ans_04u1_16 = ans_04u1[15].ToString();
                                evalResults.ans_04u1_17 = ans_04u1[16].ToString();
                                evalResults.ans_04u1_18 = ans_04u1[17].ToString();
                                evalResults.ans_04u1_19 = ans_04u1[18].ToString();
                                evalResults.ans_04u1_20 = ans_04u1[19].ToString();

                                evalResults.ans_04u2_01 = ans_04u2[0].ToString();
                                evalResults.ans_04u2_02 = ans_04u2[1].ToString();
                                evalResults.ans_04u2_03 = ans_04u2[2].ToString();
                                evalResults.ans_04u2_04 = ans_04u2[3].ToString();
                                evalResults.ans_04u2_05 = ans_04u2[4].ToString();
                                evalResults.ans_04u2_06 = ans_04u2[5].ToString();

                                evalResults.ans_04u3_01 = ans_04u3[0].ToString();
                                evalResults.ans_04u3_02 = ans_04u3[1].ToString();
                                evalResults.ans_04u3_03 = ans_04u3[2].ToString();
                                evalResults.ans_04u3_04 = ans_04u3[3].ToString();
                                evalResults.ans_04u3_05 = ans_04u3[4].ToString();
                                evalResults.ans_04u3_06 = ans_04u3[5].ToString();
                                evalResults.ans_04u3_07 = ans_04u3[6].ToString();

                                evalResults.ans_04u4_01 = ans_04u4[0].ToString();
                                evalResults.ans_04u4_02 = ans_04u4[1].ToString();
                                evalResults.ans_04u4_03 = ans_04u4[2].ToString();
                                evalResults.ans_04u4_04 = ans_04u4[3].ToString();
                                evalResults.ans_04u4_05 = ans_04u4[4].ToString();
                                evalResults.ans_04u4_06 = ans_04u4[5].ToString();
                                evalResults.ans_04u4_07 = ans_04u4[6].ToString();
                                evalResults.ans_04u4_08 = ans_04u4[7].ToString();
                                evalResults.ans_04u4_09 = ans_04u4[8].ToString();
                                evalResults.ans_04u4_10 = ans_04u4[9].ToString();
                                evalResults.ans_04u4_11 = ans_04u4[10].ToString();
                                evalResults.ans_04u4_12 = ans_04u4[11].ToString();
                                evalResults.ans_04u4_13 = ans_04u4[12].ToString();
                                evalResults.ans_04u4_14 = ans_04u4[13].ToString();
                                evalResults.ans_04u4_15 = ans_04u4[14].ToString();

                            }
                        }
                    }
                }
            }
            catch (SqlException e2)
            {

            }

            return evalResults;
        }

        public static void WriteTsv<T>(IEnumerable<T> data, TextWriter output)
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
