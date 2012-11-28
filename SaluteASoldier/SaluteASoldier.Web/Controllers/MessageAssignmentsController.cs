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
    public class MessageAssignmentsController : ApiController
    {
        private SaluteASoldierContext db = new SaluteASoldierContext();

        // GET api/MessageAssignment
        public IEnumerable<MessageAssignment> GetMessageAssignments()
        {
            var messageassignments = db.MessageAssignments.Include(m => m.Message).Include(m => m.User);
            return messageassignments.AsEnumerable();
        }

        // GET api/MessageAssignment/5
        public MessageAssignment GetMessageAssignment(int id)
        {
            MessageAssignment messageassignment = db.MessageAssignments.Find(id);
            if (messageassignment == null)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.NotFound));
            }

            return messageassignment;
        }

        public IEnumerable<MessageAssignment> GetMessageAssignmentsByUserId(int userId)
        {
            var messageAssignments = db.MessageAssignments.Where(a => a.UserID == userId);
            return messageAssignments;
        }


        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}