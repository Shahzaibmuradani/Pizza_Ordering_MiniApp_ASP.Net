namespace Krazy
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Pizza : DbContext
    {
        public Pizza()
            : base("name=Pizza")
        {
        }

        public virtual DbSet<Customer> Customers { get; set; }
        public virtual DbSet<feedback> feedbacks { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Customer>()
                .Property(e => e.Flavor)
                .IsUnicode(false);

            modelBuilder.Entity<Customer>()
                .Property(e => e.Size)
                .IsUnicode(false);

            modelBuilder.Entity<Customer>()
                .Property(e => e.Toppings)
                .IsUnicode(false);

            modelBuilder.Entity<Customer>()
                .Property(e => e.Drinks)
                .IsUnicode(false);

            //modelBuilder.Entity<Customer>()
            //    .Property(e => e.Cust_name)
            //    .IsUnicode(false);

            //modelBuilder.Entity<Customer>()
            //    .Property(e => e.Cust_add)
            //    .IsUnicode(false);

            modelBuilder.Entity<feedback>()
                .Property(e => e.Delivery_Rating)
                .IsUnicode(false);

            modelBuilder.Entity<feedback>()
                .Property(e => e.Flavour_Rating)
                .IsUnicode(false);
        }
    }
}
