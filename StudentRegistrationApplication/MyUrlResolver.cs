using Microsoft.AspNet.FriendlyUrls.Resolvers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace StudentRegistrationApplication
{
    public class MyUrlResolver: WebFormsFriendlyUrlResolver
    {
        protected override bool TrySetMobileMasterPage(HttpContextBase httpContext, Page page, string mobileSuffix)
        {

            //override false;
            return base.TrySetMobileMasterPage(httpContext, page, mobileSuffix);
        }

         
    }
}