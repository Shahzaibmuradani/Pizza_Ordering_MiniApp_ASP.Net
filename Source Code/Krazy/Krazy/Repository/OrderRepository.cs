using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Krazy
{
    public class OrderRepository
    {
        Pizza db = new Pizza();

        public List<Customer> GetOrders()
        {
            return db.Customers.ToList();
        }

        public List<feedback> GetFeedbacks()
        {
            return db.feedbacks.ToList();
        }

        public void Insert(Customer order)
        {
            db.Customers.Add(order);
            db.SaveChanges();
        }

        public void Insert_feed(feedback feed)
        {
            db.feedbacks.Add(feed);
            db.SaveChanges();
        }

        public void Update(Customer order)
        {
            Customer orderupdate = db.Customers.FirstOrDefault(x => x.Id == order.Id);
            orderupdate.Flavor = order.Flavor;
            orderupdate.Size = order.Size;
            orderupdate.Toppings = order.Toppings;
            orderupdate.Drinks = order.Drinks;
            orderupdate.Cust_name = order.Cust_name;
            orderupdate.Cust_num = order.Cust_num;
            orderupdate.Cust_add = order.Cust_add;
            orderupdate.Status = order.Status;
            db.SaveChanges();
        }       
    }
}