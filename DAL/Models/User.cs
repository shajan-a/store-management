using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DAL.Models
{
    public class User
    {
        public string UserName { get; set; }
        public string GenderId { get; set; }
        public string Mobile { get; set; }
        public string Password { get; set; }
    }

    public class Record
    {
        public IList<Items> LstItems { get; set; }
        public int Count { get; set; }
        public int Date { get; set; }
        public int UserId { get; set; }
        public int DeptId { get; set; }
        public int RoleId { get; set; }
    }

    public class Items
    {
        public int Id { get; set; }
        public string Item { get; set; }
        public int Stock { get; set; }
        public bool Available { get; set; }
    }

    public class Department
    {
        public int Id { get; set; }
        public string Dept { get; set; }
        public string Designation { get; set; }
    }
    public class Roles
    {
        public int Id { get; set; }
        public string Role { get; set; }
    }

    enum Gender
    {
        Male,
        Female
    }
}