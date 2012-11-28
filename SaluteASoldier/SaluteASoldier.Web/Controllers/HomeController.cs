using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SaluteASoldier.Web.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult SendMessage()
        {
            return View();
        }

        public ActionResult ViewMessages()
        {
            return View();
        }

        public ActionResult ScreenMessages()
        {
            return View();
        }
    }
}
