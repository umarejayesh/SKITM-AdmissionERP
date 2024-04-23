using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
        if(FileUpload1.PostedFile!=null && FileUpload1.PostedFile.FileName!="")
        {
            if (FileUpload1.PostedFile.ContentLength < 10240 )
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);
            }
            else
            {
                FileUpload1.SaveAs(Server.MapPath(imgPath));
                Image1.ImageUrl = "~/" + imgPath;
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page),"Alert","alert()",true);
            }
        }

    }
}
