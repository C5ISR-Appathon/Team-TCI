//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SaluteASoldier.Web.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Message
    {
        public Message()
        {
            this.MessageAssignments = new HashSet<MessageAssignment>();
        }
    
        public int ID { get; set; }
        public string Text { get; set; }
        public bool Screened { get; set; }
        public int Originator { get; set; }
        public System.DateTime SubmissionDate { get; set; }
        public int Destination { get; set; }
    
        public virtual User User { get; set; }
        public virtual UserType UserType { get; set; }
        public virtual ICollection<MessageAssignment> MessageAssignments { get; set; }
    }
}
