using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using SaluteASoldier.Web.Models;

namespace SaluteASoldier.Web.Controllers
{
    public class MessagesController : ApiController
    {
        private SaluteASoldierContext db = new SaluteASoldierContext();

        // GET api/Messages
        public IEnumerable<Message> GetMessages()
        {
            return db.Messages.AsEnumerable();
        }

        // GET api/Messages/5
        public Message GetMessage(int id)
        {
            Message message = db.Messages.Find(id);
            if (message == null)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.NotFound));
            }

            return message;
        }

        // PUT api/Messages/5
        public HttpResponseMessage PutMessage(int id, Message message)
        {
            if (ModelState.IsValid && id == message.ID)
            {
                db.Entry(message).State = EntityState.Modified;

                try
                {
                    db.SaveChanges();
                }
                catch (DbUpdateConcurrencyException)
                {
                    return Request.CreateResponse(HttpStatusCode.NotFound);
                }

                return Request.CreateResponse(HttpStatusCode.OK, message);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest);
            }
        }

        // POST api/Messages
        public HttpResponseMessage PostMessage(Message message)
        {
            if (ModelState.IsValid)
            {
                db.Messages.Add(message);
                db.SaveChanges();

                HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.Created, message);
                response.Headers.Location = new Uri(Url.Link("DefaultApi", new { id = message.ID }));
                return response;
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest);
            }
        }

        // DELETE api/Messages/5
        public HttpResponseMessage DeleteMessage(int id)
        {
            Message message = db.Messages.Find(id);
            if (message == null)
            {
                return Request.CreateResponse(HttpStatusCode.NotFound);
            }

            db.Messages.Remove(message);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                return Request.CreateResponse(HttpStatusCode.NotFound);
            }

            return Request.CreateResponse(HttpStatusCode.OK, message);
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}