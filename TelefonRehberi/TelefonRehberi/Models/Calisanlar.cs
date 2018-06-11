namespace TelefonRehberi.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Calisanlar")]
    public partial class Calisanlar
    {
        public int id { get; set; }
        [Display(Name="Adi")]
        [Required(ErrorMessage ="Ad�n�z� giriniz ")]
        [StringLength(20)]
        public string Adi { get; set; }
        [Display(Name = "Soyad�")]
        [Required(ErrorMessage = "Soyad�n�z� giriniz ")]
        [StringLength(20)]
        public string Soyadi { get; set; }

        [StringLength(50)]
        [Display(Name = "Email")]
       
        [EmailAddress]
        public string email { get; set; }
        [StringLength(11,MinimumLength =11)]
        [Phone]
        [Display(Name = "Telefon Numaras�")]
        [Required(ErrorMessage = "Telefon Numaras�n�z� giriniz ")]

        public String Telefon { get; set; }

        [StringLength(50)]
        [Display(Name = "Kullan�c� Ad�")]
        
        public string KullaniciAdi { get; set; }

        [StringLength(50)]
        [Display(Name = "�ifre")]
       
        [DataType(DataType.Password)]
        public string Sifre { get; set; }

        [Display(Name = "Kullan�c� Ad�")]
        public int Departmanid { get; set; }

        [Display(Name = "Kullan�c� Ad�")]
        public int Yoneticiid { get; set; }
        [Display(Name = "Kullan�c� Ad�")]
        public virtual Departman Departman { get; set; }
        [Display(Name = "Kullan�c� Ad�")]
        public virtual Yonetici Yonetici { get; set; }
    }
}
