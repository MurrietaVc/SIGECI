﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SGC
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class SGCEntities : DbContext
    {
        public SGCEntities()
            : base("name=SGCEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<tbl_Act_Indicador> tbl_Act_Indicador { get; set; }
        public virtual DbSet<tbl_Actividades> tbl_Actividades { get; set; }
        public virtual DbSet<tbl_Alumnos> tbl_Alumnos { get; set; }
        public virtual DbSet<tbl_Calificaciones> tbl_Calificaciones { get; set; }
        public virtual DbSet<tbl_Carreras> tbl_Carreras { get; set; }
        public virtual DbSet<tbl_Grupo_Alumno> tbl_Grupo_Alumno { get; set; }
        public virtual DbSet<tbl_Grupos> tbl_Grupos { get; set; }
        public virtual DbSet<tbl_Indicadores> tbl_Indicadores { get; set; }
        public virtual DbSet<tbl_Instrumentos> tbl_Instrumentos { get; set; }
        public virtual DbSet<tbl_Materias> tbl_Materias { get; set; }
        public virtual DbSet<tbl_Perfil> tbl_Perfil { get; set; }
        public virtual DbSet<tbl_Temas> tbl_Temas { get; set; }
        public virtual DbSet<tbl_Usuarios> tbl_Usuarios { get; set; }
    }
}