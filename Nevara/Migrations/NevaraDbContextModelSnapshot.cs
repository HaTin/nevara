﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Nevara;

namespace Nevara.Migrations
{
    [DbContext(typeof(NevaraDbContext))]
    partial class NevaraDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.1.1-rtm-30846")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<System.Guid>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("ClaimType");

                    b.Property<string>("ClaimValue");

                    b.Property<Guid>("RoleId");

                    b.HasKey("Id");

                    b.HasIndex("RoleId");

                    b.ToTable("AppRoleClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<System.Guid>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("ClaimType");

                    b.Property<string>("ClaimValue");

                    b.Property<Guid>("UserId");

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("AppUserClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<System.Guid>", b =>
                {
                    b.Property<Guid>("UserId");

                    b.Property<string>("LoginProvider")
                        .IsRequired();

                    b.Property<string>("ProviderDisplayName");

                    b.Property<string>("ProviderKey")
                        .IsRequired();

                    b.HasKey("UserId");

                    b.HasAlternateKey("LoginProvider", "ProviderKey");

                    b.ToTable("AppUserLogins");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<System.Guid>", b =>
                {
                    b.Property<Guid>("RoleId");

                    b.Property<Guid>("UserId");

                    b.HasKey("RoleId", "UserId");

                    b.HasAlternateKey("UserId", "RoleId");

                    b.ToTable("AppUserRole");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<System.Guid>", b =>
                {
                    b.Property<Guid>("UserId");

                    b.Property<string>("LoginProvider")
                        .IsRequired();

                    b.Property<string>("Name")
                        .IsRequired();

                    b.Property<string>("Value");

                    b.HasKey("UserId");

                    b.HasAlternateKey("UserId", "LoginProvider", "Name");

                    b.ToTable("AppUserTokens");
                });

            modelBuilder.Entity("Nevara.Models.Entities.AppRole", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken();

                    b.Property<bool>("IsDeleted");

                    b.Property<string>("Name")
                        .HasMaxLength(256);

                    b.Property<string>("NormalizedName")
                        .HasMaxLength(256);

                    b.HasKey("Id");

                    b.HasIndex("NormalizedName")
                        .IsUnique()
                        .HasName("RoleNameIndex")
                        .HasFilter("[NormalizedName] IS NOT NULL");

                    b.ToTable("AppRoles");
                });

            modelBuilder.Entity("Nevara.Models.Entities.AppUser", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("AccessFailedCount");

                    b.Property<string>("Address")
                        .HasMaxLength(255);

                    b.Property<string>("Avatar");

                    b.Property<DateTime?>("BirthDate");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken();

                    b.Property<string>("Email")
                        .HasMaxLength(256);

                    b.Property<bool>("EmailConfirmed");

                    b.Property<string>("FullName")
                        .IsRequired()
                        .HasMaxLength(255);

                    b.Property<bool>("IsDeleted");

                    b.Property<bool>("LockoutEnabled");

                    b.Property<DateTimeOffset?>("LockoutEnd");

                    b.Property<string>("NormalizedEmail")
                        .HasMaxLength(256);

                    b.Property<string>("NormalizedUserName")
                        .HasMaxLength(256);

                    b.Property<string>("PasswordHash");

                    b.Property<string>("PhoneNumber");

                    b.Property<bool>("PhoneNumberConfirmed");

                    b.Property<string>("SecurityStamp");

                    b.Property<bool>("TwoFactorEnabled");

                    b.Property<string>("UserName")
                        .HasMaxLength(256);

                    b.HasKey("Id");

                    b.HasIndex("NormalizedEmail")
                        .HasName("EmailIndex");

                    b.HasIndex("NormalizedUserName")
                        .IsUnique()
                        .HasName("UserNameIndex")
                        .HasFilter("[NormalizedUserName] IS NOT NULL");

                    b.ToTable("AppUsers");
                });

            modelBuilder.Entity("Nevara.Models.Entities.Category", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Image")
                        .IsRequired()
                        .HasColumnType("varchar(255)")
                        .HasMaxLength(255);

                    b.Property<bool>("IsDeleted");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(255);

                    b.HasKey("Id");

                    b.ToTable("Categories");

                    b.HasData(
                        new { Id = 1, Image = "/images/Category/cat3.jpg", IsDeleted = false, Name = "Beds" },
                        new { Id = 2, Image = "/images/Category/cat1.jpg", IsDeleted = false, Name = "Tables" },
                        new { Id = 3, Image = "/images/Category/cat2.jpg", IsDeleted = false, Name = "Chair" },
                        new { Id = 4, Image = "/images/Category/cat2.jpg", IsDeleted = false, Name = "Kitchen Furniture" }
                    );
                });

            modelBuilder.Entity("Nevara.Models.Entities.Collection", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("CollectionName")
                        .IsRequired()
                        .HasMaxLength(255);

                    b.Property<string>("Description");

                    b.Property<string>("Image")
                        .HasMaxLength(50);

                    b.Property<bool>("IsDeleted");

                    b.HasKey("Id");

                    b.ToTable("Collections");

                    b.HasData(
                        new { Id = 1, CollectionName = "Autumn", Description = "This is autumn description", IsDeleted = false },
                        new { Id = 2, CollectionName = "Fall", Description = "This is autumn description", IsDeleted = false },
                        new { Id = 3, CollectionName = "Summner", Description = "This is autumn description", IsDeleted = false },
                        new { Id = 4, CollectionName = "Spring", Description = "This is autumn description", IsDeleted = false }
                    );
                });

            modelBuilder.Entity("Nevara.Models.Entities.Color", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Code")
                        .HasColumnType("varchar(50)")
                        .HasMaxLength(50);

                    b.Property<string>("ColorName")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.Property<bool>("IsDeleted");

                    b.HasKey("Id");

                    b.ToTable("Colors");

                    b.HasData(
                        new { Id = 1, Code = "#d80000", ColorName = "Red", IsDeleted = false },
                        new { Id = 2, Code = "#0099cc", ColorName = "Blue", IsDeleted = false },
                        new { Id = 3, Code = "#29ab87", ColorName = "Green", IsDeleted = false },
                        new { Id = 4, Code = "#000000", ColorName = "White", IsDeleted = false }
                    );
                });

            modelBuilder.Entity("Nevara.Models.Entities.Image", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("ImagePath")
                        .HasColumnType("varchar(255)")
                        .HasMaxLength(255);

                    b.Property<int?>("ProductId");

                    b.HasKey("Id");

                    b.HasIndex("ProductId");

                    b.ToTable("Images");
                });

            modelBuilder.Entity("Nevara.Models.Entities.Manufacturer", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<bool>("IsDeleted");

                    b.Property<string>("ManufacturerName");

                    b.HasKey("Id");

                    b.ToTable("Manufacturers");

                    b.HasData(
                        new { Id = 1, IsDeleted = false, ManufacturerName = "Yokohama" },
                        new { Id = 2, IsDeleted = false, ManufacturerName = "Samsung" },
                        new { Id = 3, IsDeleted = false, ManufacturerName = "Honda" }
                    );
                });

            modelBuilder.Entity("Nevara.Models.Entities.Material", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<bool>("IsDeleted");

                    b.Property<string>("MaterialName")
                        .IsRequired()
                        .HasMaxLength(255);

                    b.HasKey("Id");

                    b.ToTable("Materials");

                    b.HasData(
                        new { Id = 1, IsDeleted = false, MaterialName = "Wood" },
                        new { Id = 2, IsDeleted = false, MaterialName = "Plastic" },
                        new { Id = 3, IsDeleted = false, MaterialName = "Wood" }
                    );
                });

            modelBuilder.Entity("Nevara.Models.Entities.Order", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("BillStatus");

                    b.Property<DateTime>("CreatedDate");

                    b.Property<string>("CustomerAddress")
                        .IsRequired()
                        .HasMaxLength(255);

                    b.Property<Guid>("CustomerId");

                    b.Property<string>("CustomerMessage");

                    b.Property<string>("CustomerMobile")
                        .IsRequired()
                        .HasMaxLength(20);

                    b.Property<string>("CustomerName")
                        .IsRequired()
                        .HasMaxLength(255);

                    b.Property<bool>("IsDeleted");

                    b.Property<int>("PaymentMethod");

                    b.Property<Guid>("UserId");

                    b.HasKey("Id");

                    b.HasIndex("CustomerId");

                    b.ToTable("Orders");
                });

            modelBuilder.Entity("Nevara.Models.Entities.OrderDetail", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("OrderId");

                    b.Property<decimal>("Price");

                    b.Property<int>("Quantity");

                    b.HasKey("Id");

                    b.HasIndex("OrderId");

                    b.ToTable("OrderDetails");
                });

            modelBuilder.Entity("Nevara.Models.Entities.Product", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("CategoryId");

                    b.Property<int>("CollectionId");

                    b.Property<int>("ColorId");

                    b.Property<double?>("Depth");

                    b.Property<string>("Description");

                    b.Property<double?>("Height");

                    b.Property<bool?>("HomeFlag");

                    b.Property<bool?>("HotFlag");

                    b.Property<bool>("IsDeleted");

                    b.Property<int>("ManufacturerId");

                    b.Property<int>("MaterialId");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(255);

                    b.Property<bool?>("NewFlag");

                    b.Property<decimal>("OriginalPrice")
                        .ValueGeneratedOnAdd()
                        .HasDefaultValue(0m);

                    b.Property<decimal>("Price")
                        .ValueGeneratedOnAdd()
                        .HasDefaultValue(0m);

                    b.Property<decimal?>("PromotionPrice");

                    b.Property<int?>("Quantity");

                    b.Property<string>("Thumbnail")
                        .IsRequired()
                        .HasColumnType("varchar(255)")
                        .HasMaxLength(255);

                    b.Property<double?>("Width");

                    b.HasKey("Id");

                    b.HasIndex("CategoryId");

                    b.HasIndex("CollectionId");

                    b.HasIndex("ColorId");

                    b.HasIndex("ManufacturerId");

                    b.HasIndex("MaterialId");

                    b.ToTable("Products");

                    b.HasData(
                        new { Id = 1, CategoryId = 1, CollectionId = 1, ColorId = 1, IsDeleted = false, ManufacturerId = 1, MaterialId = 1, Name = "Bed 1", OriginalPrice = 0m, Price = 2000m, Thumbnail = "/images/Product/pro1.jpg" },
                        new { Id = 2, CategoryId = 1, CollectionId = 1, ColorId = 1, IsDeleted = false, ManufacturerId = 2, MaterialId = 2, Name = "Bed 2", OriginalPrice = 0m, Price = 3000m, Quantity = 10, Thumbnail = "/images/Product/pro2.jpg" },
                        new { Id = 3, CategoryId = 1, CollectionId = 2, ColorId = 1, IsDeleted = false, ManufacturerId = 2, MaterialId = 3, Name = "Bed 3", OriginalPrice = 0m, Price = 2000m, Thumbnail = "/images/Product/pro2.jpg" },
                        new { Id = 4, CategoryId = 2, CollectionId = 2, ColorId = 1, IsDeleted = false, ManufacturerId = 1, MaterialId = 1, Name = "Table 1", OriginalPrice = 0m, Price = 2000m, Quantity = 10, Thumbnail = "/images/Product/pro1.jpg" },
                        new { Id = 5, CategoryId = 2, CollectionId = 3, ColorId = 2, IsDeleted = false, ManufacturerId = 2, MaterialId = 2, Name = "Table 2", OriginalPrice = 0m, Price = 2000m, Quantity = 20, Thumbnail = "/images/Product/pro2.jpg" },
                        new { Id = 6, CategoryId = 2, CollectionId = 4, ColorId = 3, IsDeleted = false, ManufacturerId = 2, MaterialId = 3, Name = "Table 3", OriginalPrice = 0m, Price = 1000m, Quantity = 50, Thumbnail = "/images/Product/pro2.jpg" },
                        new { Id = 7, CategoryId = 3, CollectionId = 4, ColorId = 1, IsDeleted = false, ManufacturerId = 1, MaterialId = 1, Name = "Chair 1", OriginalPrice = 0m, Price = 2000m, Quantity = 25, Thumbnail = "/images/Product/pro1.jpg" },
                        new { Id = 8, CategoryId = 3, CollectionId = 4, ColorId = 2, IsDeleted = false, ManufacturerId = 2, MaterialId = 2, Name = "Chair 2", OriginalPrice = 0m, Price = 1000m, Quantity = 30, Thumbnail = "/images/Product/pro2.jpg" },
                        new { Id = 9, CategoryId = 3, CollectionId = 2, ColorId = 3, IsDeleted = false, ManufacturerId = 2, MaterialId = 3, Name = "Chair 3", OriginalPrice = 0m, Price = 5000m, Thumbnail = "/images/Product/pro2.jpg" },
                        new { Id = 10, CategoryId = 4, CollectionId = 3, ColorId = 4, IsDeleted = false, ManufacturerId = 1, MaterialId = 1, Name = "Kitchen 1 ", OriginalPrice = 0m, Price = 2000m, Thumbnail = "/images/Product/pro1.jpg" },
                        new { Id = 11, CategoryId = 4, CollectionId = 4, ColorId = 1, IsDeleted = false, ManufacturerId = 2, MaterialId = 2, Name = "Kitchen 2", OriginalPrice = 0m, Price = 2000m, Thumbnail = "/images/Product/pro2.jpg" },
                        new { Id = 12, CategoryId = 4, CollectionId = 1, ColorId = 2, IsDeleted = false, ManufacturerId = 2, MaterialId = 3, Name = "Kitchen 3", OriginalPrice = 0m, Price = 2000m, Thumbnail = "/images/Product/pro2.jpg" }
                    );
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<System.Guid>", b =>
                {
                    b.HasOne("Nevara.Models.Entities.AppRole")
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<System.Guid>", b =>
                {
                    b.HasOne("Nevara.Models.Entities.AppUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<System.Guid>", b =>
                {
                    b.HasOne("Nevara.Models.Entities.AppUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<System.Guid>", b =>
                {
                    b.HasOne("Nevara.Models.Entities.AppRole")
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("Nevara.Models.Entities.AppUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<System.Guid>", b =>
                {
                    b.HasOne("Nevara.Models.Entities.AppUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Nevara.Models.Entities.Image", b =>
                {
                    b.HasOne("Nevara.Models.Entities.Product", "Product")
                        .WithMany()
                        .HasForeignKey("ProductId");
                });

            modelBuilder.Entity("Nevara.Models.Entities.Order", b =>
                {
                    b.HasOne("Nevara.Models.Entities.AppUser", "User")
                        .WithMany()
                        .HasForeignKey("CustomerId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Nevara.Models.Entities.OrderDetail", b =>
                {
                    b.HasOne("Nevara.Models.Entities.Order", "Order")
                        .WithMany("OrderDetails")
                        .HasForeignKey("OrderId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Nevara.Models.Entities.Product", b =>
                {
                    b.HasOne("Nevara.Models.Entities.Category", "Category")
                        .WithMany("Products")
                        .HasForeignKey("CategoryId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("Nevara.Models.Entities.Collection", "Collection")
                        .WithMany("Products")
                        .HasForeignKey("CollectionId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("Nevara.Models.Entities.Color", "Color")
                        .WithMany()
                        .HasForeignKey("ColorId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("Nevara.Models.Entities.Manufacturer", "Manufacturer")
                        .WithMany("Products")
                        .HasForeignKey("ManufacturerId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("Nevara.Models.Entities.Material", "Material")
                        .WithMany()
                        .HasForeignKey("MaterialId")
                        .OnDelete(DeleteBehavior.Cascade);
                });
#pragma warning restore 612, 618
        }
    }
}
