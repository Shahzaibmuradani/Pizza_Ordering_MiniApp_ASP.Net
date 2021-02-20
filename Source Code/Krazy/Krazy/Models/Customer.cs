namespace Krazy
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Customer")]
    public partial class Customer
    {
        public int Id { get; set; }

        [StringLength(20)]
        public string Flavor { get; set; }

        [StringLength(20)]
        public string Size { get; set; }

        [StringLength(20)]
        public string Toppings { get; set; }

        [StringLength(20)]
        public string Drinks { get; set; }

        [StringLength(20)]
        public string Cust_name { get; set; }

        public long? Cust_num { get; set; }

        [StringLength(30)]
        public string Cust_add { get; set; }

        [Column(TypeName = "date")]
        public DateTime? Date { get; set; }

        public bool? Status { get; set; }
    }
}
