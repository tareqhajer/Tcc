﻿using System;
using System.Collections.Generic;

namespace DAL.Models
{
    public partial class Langaues
    {
        public Langaues()
        {
            Students = new HashSet<Students>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public bool IsEnabled { get; set; }
        public DateTime Created { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? Modified { get; set; }
        public string ModifiedBy { get; set; }

        public ICollection<Students> Students { get; set; }
    }
}
