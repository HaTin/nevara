﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Nevara.ApplicationCore.Dtos;
using Nevara.ApplicationCore.Helpers;
using Nevara.ApplicationCore.Interfaces;
using Nevara.ApplicationCore.Models.Entities;
using Nevara.ApplicationCore.ViewModel;

namespace Nevara.ApplicationCore.Services
{
    public class ProductService : IProductService

    {
        private readonly NevaraDbContext _context;

        public ProductService(NevaraDbContext context)
        {
            _context = context;
        }

        public async Task<PageResult<ProductViewModel>> GetProduct(int? categoryId, int? collectionId, string keyword,
            int page, int pageSize)
        {
            var query = _context.Products.AsQueryable().IgnoreQueryFilters().Where(p => !p.IsDeleted);
            if (!string.IsNullOrEmpty(keyword))
            {
                query = query.Where(x =>
                    Util.ConvertToUnsign(x.Name).Contains(Util.ConvertToUnsign(keyword),
                        StringComparison.CurrentCultureIgnoreCase));
            }
            if (categoryId.HasValue)
            {
                query = query.Where(x => x.CategoryId == categoryId);
            }

            if (collectionId.HasValue)
            {
                query = query.Where(x => x.CollectionId == collectionId);
            }

            int totalRow = await query.CountAsync();
            query = query.OrderByDescending(x => x.Id).Skip((page - 1) * pageSize).Take(pageSize);
            var data = await query.Select(p => new ProductViewModel
            {
                Id = p.Id,
                Name = p.Name,
                CategoryName = p.Category.Name,
                Price = p.Price,
                Thumbnail = p.Thumbnail,
                Quantity = p.Quantity,
                NewFlag = p.NewFlag,
                HotFlag = p.HotFlag,
                PromotionPrice = p.PromotionPrice
            }).ToListAsync();
            var paginationSet = new PageResult<ProductViewModel>()
            {
                Results = data,
                CurrentPage = page,
                RowCount = totalRow,
                PageSize = pageSize
            };
            return paginationSet;
        }

        public async Task<ProductViewModel> Find(int? id)
        {

            var model = await _context.Products.FindAsync(id);
            var viewModel = new ProductViewModel()
            {
                Id = model.Id,
                CategoryId = model.CategoryId,
                Name = model.Name,
                Quantity = model.Quantity,
                Length = model.Length,
                Height = model.Height,
                Depth = model.Depth,
                Price = model.Price,
                HomeFlag = model.HomeFlag,
                CollectionId = model.CollectionId,
                ColorId = model.ColorId,
                HotFlag = model.HotFlag,
                Description = model.Description,
                PromotionPrice = model.PromotionPrice,
                ManufacturerId = model.ManufacturerId,
                MaterialId = model.MaterialId,
                NewFlag = model.NewFlag,
                OriginalPrice = model.OriginalPrice,
                Thumbnail = model.Thumbnail
            };
            return viewModel;
        }


        public async Task Add(ProductViewModel pro)
        {
            var product = new Product()
            {
                Name = pro.Name,
                CategoryId = pro.CategoryId,
                CollectionId = pro.CollectionId,
                ColorId = pro.ColorId,
                MaterialId = pro.MaterialId,
                Depth = pro.Depth,
                Height = pro.Height,
                Length = pro.Length,
                HomeFlag = pro.HomeFlag,
                HotFlag = pro.HotFlag,
                OriginalPrice = pro.OriginalPrice,
                PromotionPrice = pro.PromotionPrice,
                Price = pro.Price,
                NewFlag = pro.NewFlag,
                ManufacturerId = pro.ManufacturerId,
                Quantity = pro.Quantity,
                IsDeleted = false,
                Description = pro.Description,
                Thumbnail = pro.Thumbnail ?? "/images/1.png",
            };

            _context.Add(product);
            await _context.SaveChangesAsync();
        }

        public async Task Update(ProductViewModel pro)
        {
            var prod = await _context.Products.FindAsync(pro.Id);
            prod.Name = pro.Name;
            prod.CategoryId = pro.CategoryId;
            prod.CollectionId = pro.CollectionId;
            prod.ColorId = pro.ColorId;
            prod.MaterialId = pro.MaterialId;
            prod.Depth = pro.Depth;
            prod.Height = pro.Height;
            prod.Length = pro.Length;
            prod.HomeFlag = pro.HomeFlag;
            prod.HotFlag = pro.HotFlag;
            prod.OriginalPrice = pro.OriginalPrice;
            prod.PromotionPrice = pro.PromotionPrice;
            prod.Price = pro.Price;
            prod.NewFlag = pro.NewFlag;
            prod.ManufacturerId = pro.ManufacturerId;
            prod.Quantity = pro.Quantity;
            prod.Description = pro.Description;
            prod.Thumbnail = pro.Thumbnail;
            await _context.SaveChangesAsync();
        }

        public async Task Remove(int? id)
        {
            var pro = await _context.Products.FindAsync(id);
            pro.IsDeleted = true;
            await _context.SaveChangesAsync();
        }

        public async Task<bool> CheckProductAmountInCategory(int? id)
        {
            return await _context.Products.AnyAsync(p => p.CategoryId == id);
        }

        public async Task<bool> CheckProductAmountInMaterial(int? id)
        {
            return await _context.Products.AnyAsync(p => p.MaterialId == id);
        }

        public async Task<bool> CheckProductAmountInManufacturer(int? id)
        {
            return await _context.Products.AnyAsync(p => p.ManufacturerId == id);
        }

        public async Task<bool> CheckProductAmountInCollection(int? id)
        {
            return await _context.Products.AnyAsync(p => p.CollectionId == id);
        }

        public async Task<bool> CheckProductAmountInColor(int? id)
        {
            return await _context.Products.AnyAsync(p => p.ColorId == id);
        }

        public async Task<List<ProductViewModel>> GetHomeProducts()
        {
            var model = await _context.Products.Where(p => p.HomeFlag == true).Where(p => !p.IsDeleted).Select(
                p => new ProductViewModel
                {
                    Id = p.Id,
                    Name = p.Name,
                    Price = p.Price,
                    PromotionPrice = p.PromotionPrice,
                    Thumbnail = p.Thumbnail,
                    HotFlag = p.HotFlag,
                    NewFlag = p.NewFlag,
                    Quantity = p.Quantity                    
                }).ToListAsync();
            return model;
        }

        public async Task<ProductViewModel> GetProducDetail(int? productId)
        {
            var model = await _context.Products.Include(p => p.Collection).Include(p => p.Category)
                .Include(p => p.Material).Include(p => p.Manufacturer).Include(p => p.Color)
                .FirstOrDefaultAsync(p => p.Id == productId);
            var viewMdodel = new ProductViewModel
            {
                Id = model.Id,
                Name = model.Name,
                Price = model.Price,
                Description = model.Description,
                Quantity = model.Quantity,
                PromotionPrice = model.PromotionPrice,
                CategoryName = model.Category.Name,
                MaterialName = model.Material.MaterialName,
                CollectionName = model.Collection.CollectionName,
                ManufacturerName = model.Manufacturer.ManufacturerName,
                ColorName = model.Color.ColorName,
                Length = model.Length,
                Depth = model.Depth,
                Height = model.Height,
                Images = await _context.Images.Where(p => p.ProductId == productId).Select(p => new Image()
                {
                    ImagePath = p.ImagePath
                }).ToListAsync()
            };

            return viewMdodel;
        }

        public async Task<List<ProductViewModel>> GetProductByCategories(int? cateId)
        {
            var result = await _context.Products.Where(p => p.CategoryId == cateId).Select(p => new ProductViewModel()
            {
                Id = p.Id,
                Name = p.Name,
                Price = p.Price,
                Thumbnail = p.Thumbnail,
                HotFlag = p.HotFlag,
                NewFlag = p.NewFlag,
                PromotionPrice = p.PromotionPrice,
                Quantity = p.Quantity
            }).ToListAsync();
            return result;
        }

        public async Task AddImage(int productId, string[] images)
        {
            _context.Images.RemoveRange(_context.Images.Where(p => p.ProductId == productId));
            foreach (var image in images)
            {
                _context.Images.Add(new Image()
                {
                    ImagePath = image,
                    ProductId = productId
                });

            }

            await _context.SaveChangesAsync();
        }

        public async Task<List<ProductImageViewModel>> GetImages(int productId)
        {
            return await _context.Images.Where(p => p.ProductId == productId).Select(p => new ProductImageViewModel()
            {
                Id = p.Id,
                ImagePath = p.ImagePath
            }).ToListAsync();
        }

        public async Task<int> GetAvailableQuantity(int productId)
        {
            var quantity = await _context.Products.Where(p => p.Id == productId).Select(p => p.Quantity).SingleAsync();
           return quantity.Value;
        }

        public async Task<List<ProductViewModel>> getProductByCollections(int? collectionId)
        {
            var result = await _context.Products.Where(p => p.CollectionId == collectionId).Select(p => new ProductViewModel()
            {
                Id = p.Id,
                Name = p.Name,
                Price = p.Price,               
                Thumbnail = p.Thumbnail,
                HotFlag = p.HotFlag,
                NewFlag = p.NewFlag,
                PromotionPrice = p.PromotionPrice,
                Quantity = p.Quantity
            }).ToListAsync();
            return result;
        }
    }
}

