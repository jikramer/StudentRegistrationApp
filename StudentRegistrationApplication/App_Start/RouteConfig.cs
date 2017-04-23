using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace StudentRegistrationApplication
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings, new MyUrlResolver());

            routes.MapPageRoute("Home", "StuReg/Home", "~/Home.aspx");
         //   routes.MapPageRoute("Courses", "StuReg/Courses", "~/Courses.aspx");
            routes.MapPageRoute("Payment", "StuReg/Payment", "~/Payment.aspx");


        }
    }
}
