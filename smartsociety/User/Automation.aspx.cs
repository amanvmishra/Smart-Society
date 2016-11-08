using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.

namespace smartsociety.User
{
    public partial class Automation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        static string GetHtmlPage(string strURL)
        {

            String strResult;
            WebResponse objResponse;
            WebRequest objRequest = HttpWebRequest.Create(strURL);
            objResponse = objRequest.GetResponse();
            using (StreamReader sr = new StreamReader(objResponse.GetResponseStream()))
            {
                strResult = sr.ReadToEnd();
                sr.Close();
            }
            return strResult;
        }
    }
}