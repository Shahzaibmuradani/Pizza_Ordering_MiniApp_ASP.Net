namespace Krazy
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("feedback")]
    public partial class feedback
    {
        public int Id { get; set; }

        [StringLength(20)]
        public string Delivery_Rating { get; set; }

        [StringLength(20)]
        public string Flavour_Rating { get; set; }

        [StringLength(50)]
        public string Comments { get; set; }
    }
}
