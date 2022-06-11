using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace MVC_Movies.Models
{
    public class MovieContext : DbContext
    {
        public MovieContext() : base("Name=MovieEntites")
        {

        }

        public DbSet<Movie> Movies { get; set; }
    }
}