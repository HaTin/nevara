﻿using System.Collections.Generic;
using System.Threading.Tasks;
using Nevara.ApplicationCore.Dtos;
using Nevara.ApplicationCore.ViewModel;

namespace Nevara.ApplicationCore.Interfaces
{
    public interface IProductService
    {
       Task<PageResult<ProductViewModel>> GetProduct(int? categoryId,int? collectionId, string keyword, int page, int pageSize);
       Task<ProductViewModel> Find(int? id);
        Task Add(ProductViewModel productViewModel);
        Task Update(ProductViewModel productViewModel);
        Task Remove(int? id);
        Task<bool> CheckProductAmountInCategory(int? id);
        Task<bool> CheckProductAmountInMaterial(int? id);
        Task<bool> CheckProductAmountInManufacturer(int? id);
        Task<bool> CheckProductAmountInCollection(int? id);
        Task<bool> CheckProductAmountInColor(int? id);
        Task<List<ProductViewModel>> GetHomeProducts();
        Task<ProductViewModel> GetProducDetail(int? productId);
        Task<List<ProductViewModel>> GetProductByCategories(int? cateId);
        Task AddImage(int productId, string[] images);
        Task<List<ProductImageViewModel>> GetImages(int productId);
        Task<int> GetAvailableQuantity(int productId);
        Task<List<ProductViewModel>> getProductByCollections(int? collectionId);
    }
}
