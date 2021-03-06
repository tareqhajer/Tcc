﻿using System;
using System.Collections.Generic;

namespace DAL.Models
{
    public partial class PersonPhone
    {
        public int PersonId { get; set; }
        public int PhoneTypeId { get; set; }
        public string Phone { get; set; }
        public DateTime Created { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? Modified { get; set; }
        public string ModifiedBy { get; set; }

        public ClosesetPersons Person { get; set; }
        public PhoneType PhoneType { get; set; }
    }
}
