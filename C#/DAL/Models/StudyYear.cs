﻿using System;
using System.Collections.Generic;

namespace DAL.Models
{
    public partial class StudyYear
    {
        public StudyYear()
        {
            Registrations = new HashSet<Registrations>();
            StudySemester = new HashSet<StudySemester>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public bool IsEnabeld { get; set; }
        public DateTime Created { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? Modified { get; set; }
        public string ModifiedBy { get; set; }

        public ICollection<Registrations> Registrations { get; set; }
        public ICollection<StudySemester> StudySemester { get; set; }
    }
}
