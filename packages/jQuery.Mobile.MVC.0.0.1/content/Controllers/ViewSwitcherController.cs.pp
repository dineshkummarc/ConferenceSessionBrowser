﻿using System.Web.Mvc;
using System.Web.WebPages;

namespace $rootnamespace$.Controllers
{
    public class ViewSwitcherController : Controller
    {
        public RedirectResult SwitchView(bool mobile, string returnUrl) {
            if (Request.Browser.IsMobileDevice == mobile)
                HttpContext.ClearOverriddenBrowser();
            else
                HttpContext.SetOverriddenBrowser(mobile ? BrowserOverride.GenericMobile : BrowserOverride.GenericDesktop);

            return Redirect(returnUrl);
        }
    }
}
