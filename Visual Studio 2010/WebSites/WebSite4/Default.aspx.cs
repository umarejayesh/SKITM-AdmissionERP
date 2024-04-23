using System;
using System.Data.OleDb;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        using (con = new OleDbConnection(@"PROVIDER=Microsoft.Jet.OLEDB.4.0;" + @"DATA SOURCE = E:\accessdb\Sampledb.mdb"))
       {
           cmd = new OleDbCommand();
           cmd.CommandText="insert into userdetails(UserName,Education,Location,Mobile)values('" + txtUsername.Text + "','" + txtEducation.Text + "','" + txtLocation.Text + "','"+txtMobile.Text+"')";
 
           cmd.Connection=con;
           con.Open();
           cmd.ExecuteNonQuery();
           con.Close();
           txtUsername.Text="";
           txtEducation.Text="";
           txtLocation.Text="";
           txtMobile.Text = "";
       }
BindUserDetails();        
}
    protected void BindUserDetails()
    {
    DataSet ds = new DataSet();
        string strquery = "SELECT * FROM userdetails";
        using (con = new OleDbConnection(@"PROVIDER=Microsoft.Jet.OLEDB.4.0;" + @"DATA SOURCE = E:\accessdb\Sampledb.mdb"))
        {
            using (cmd = new OleDbCommand(strquery, con))
            {
                OleDbDataAdapter Da = new OleDbDataAdapter(cmd);
                Da.Fill(ds);
            }
        }
        gvDetails.DataSource = ds;
        gvDetails.DataBind();
        }




    protected void Button1_Click(object sender, EventArgs e)
    {
        
        StartUpLoad();
    }
    private void StartUpLoad()
    {
        string imgName = FileUpload1.FileName;
        string imgPath = "ImageStorage/" + imgName;
        int imgSize = FileUpload1.PostedFile.ContentLength;
        if(FileUpload1.PostedFile!= null && FileUpload1.PostedFile.FileName!="")
        {
            FileUpload1.SaveAs(Server.MapPath(imgPath));
            Image1.ImageUrl = "~/" + imgPath;
            Page.ClientScript.RegisterClientScriptBlock(typeof(OleDbInfoMessageEventArgs), "Alert", "alert('Image SAved!')", true);
           
        }

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}