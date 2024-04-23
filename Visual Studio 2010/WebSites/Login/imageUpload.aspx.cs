using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class imageUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {


        if (FileUpload1.HasFile)
        {

            string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);

            if (fileExtension.ToLower() != ".doc" && fileExtension.ToLower() != ".docx")
            {
                lblMessage.Text = "Only files with .doc and .docx extensions are allowed";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                FileUpload1.SaveAs(Server.MapPath("~/Uploads/" + FileUpload1.FileName));
                lblMessage.Text = "File Uploaded";
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
        }

        else
        {
            lblMessage.Text = "Please Select a file to upload";
            lblMessage.ForeColor = System.Drawing.Color.Red;
        }
        
    }
}