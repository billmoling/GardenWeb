using System;
using System.Data;
using System.Data.OleDb;
using System.Collections;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// DataFactory 的摘要说明
/// </summary>
public class DataFactory:System.Web.UI.Page
{
    //OleDbConnection con;
    //OleDbCommand cmd;
    //OleDbDataAdapter da;
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;

	public DataFactory()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
        //con = new OleDbConnection("Provider=microsoft.jet.oledb.4.0;data source=" + Server.MapPath("~/db/###wenshiDB.aspx"));
        string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["NaturalGardenConnectionString"].ToString();
        con = new SqlConnection(str);
    }
    /// <summary>
    /// 这个方法用来进行验证（登录时可用到）
    /// </summary>
    /// <param name="sql">SQL语句</param>
    /// <returns></returns>
    public bool Check(string sql)
    {
        bool b = false;
        try
        {
            con.Open();
            //cmd = new OleDbCommand(sql, con);
            cmd = new SqlCommand(sql, con);
            //OleDbDataReader dr = cmd.ExecuteReader();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                b = true;
            }
            dr.Close();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
        }
        return b;
    }
    /// <summary>
    /// 该方法用来填充返回一个数据集
    /// </summary>
    /// <param name="sql">SQL语句</param>
    /// <returns>Datalist对象</returns>
    public DataSet DataBind(string sql)
    {
        DataSet ds = new DataSet();
        try
        {
            con.Open();
            //da = new OleDbDataAdapter(sql, con);
            da = new SqlDataAdapter(sql, con);
            da.Fill(ds);
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
        }
        return ds;
    }
    /// <summary>
    /// 这个方法用来获取一条信息
    /// </summary>
    /// <param name="sql">SQL语句</param>
    /// <param name="tableName">列名</param>
    /// <returns>信息结果</returns>
    public string getAData(string sql, string columnName)
    {
        string info = "";
        try
        {
            con.Open();
            //cmd = new OleDbCommand(sql, con);
            cmd = new SqlCommand(sql, con);
            //OleDbDataReader dr = cmd.ExecuteReader();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (dr[columnName] != null)
                {
                    info = dr[columnName].ToString();
                }
                else
                {
                    info = "";
                }
            }
            dr.Close();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
        }
        return info;
    }
    /// <summary>
    /// 这个方法用来执行增删改
    /// </summary>
    /// <param name="sql">SQL语句</param>
    /// <returns>int</returns>
    public int DoEdit(string sql)
    {
        int i = -1;
        try
        {
            con.Open();
            //cmd = new OleDbCommand(sql, con);
            cmd = new SqlCommand(sql, con);
            i = cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
        }
        return i;
    }
    /// <summary>
    /// 该方法用来获取一组信息，由ArrayList类封装
    /// </summary>
    /// <param name="sql">SQL语句</param>
    /// <param name="columnName">列名</param>
    /// <returns>ArrayList对象</returns>
    public ArrayList getAList(string sql, string columnName)
    {
        ArrayList list = new ArrayList();
        try
        {
            con.Open();
            //cmd = new OleDbCommand(sql, con);
            cmd = new SqlCommand(sql, con);
            //OleDbDataReader dr = cmd.ExecuteReader();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                list.Add(dr[columnName].ToString());
            }
            dr.Close();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
        }
        return list;
    }
}
