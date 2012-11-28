using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using SaluteASoldier.Web.Models;

namespace SaluteASoldier.Web.Controllers
{
    public class UserTypesController : ApiController
    {
        private SaluteASoldierContext db = new SaluteASoldierContext();

        // GET api/UserTypes
        public IEnumerable<UserType> GetUserTypes()
        {
            return db.UserTypes.AsEnumerable();
        }

        // GET api/UserTypes
        public IEnumerable<UserType> GetUserTypesCanReceive()
        {
            return db.UserTypes.Where(a=>a.CanReceive).AsEnumerable();
        }

        // GET api/UserTypes/5
        public UserType GetUserType(int id)
        {
            UserType usertype = db.UserTypes.Find(id);
            if (usertype == null)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.NotFound));
            }

            return usertype;
        }

        // PUT api/UserTypes/5
        public HttpResponseMessage PutUserType(int id, UserType usertype)
        {
            if (ModelState.IsValid && id == usertype.ID)
            {
                db.Entry(usertype).State = EntityState.Modified;

                try
                {
                    db.SaveChanges();
                }
                catch (DbUpdateConcurrencyException)
                {
                    return Request.CreateResponse(HttpStatusCode.NotFound);
                }

                return Request.CreateResponse(HttpStatusCode.OK);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest);
            }
        }

        // POST api/UserTypes
        public HttpResponseMessage PostUserType(UserType usertype)
        {
            if (ModelState.IsValid)
            {
                db.UserTypes.Add(usertype);
                db.SaveChanges();

                HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.Created, usertype);
                response.Headers.Location = new Uri(Url.Link("DefaultApi", new { id = usertype.ID }));
                return response;
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest);
            }
        }

        // DELETE api/UserTypes/5
        public HttpResponseMessage DeleteUserType(int id)
        {
            UserType usertype = db.UserTypes.Find(id);
            if (usertype == null)
            {
                return Request.CreateResponse(HttpStatusCode.NotFound);
            }

            db.UserTypes.Remove(usertype);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                return Request.CreateResponse(HttpStatusCode.NotFound);
            }

            return Request.CreateResponse(HttpStatusCode.OK, usertype);
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}