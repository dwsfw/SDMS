﻿//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace SDMS.Domain.Concrete
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class SDMSEntities : DbContext
    {
        public SDMSEntities()
            : base("name=SDMSEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Admin> Admin { get; set; }
        public virtual DbSet<Dorm> Dorm { get; set; }
        public virtual DbSet<Repair> Repair { get; set; }
        public virtual DbSet<Student> Student { get; set; }
        public virtual DbSet<WaterAndElectricity> WaterAndElectricity { get; set; }
        public virtual DbSet<Staff> Staff { get; set; }
        public virtual DbSet<Lease> Lease { get; set; }
        public virtual DbSet<ChangeDorm> ChangeDorm { get; set; }
    }
}
