﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("Your Registration is Successfull");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:51564/Login/search.aspx");
    }
}