﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Nevara.Areas.Admin.Models;

namespace Nevara.Interfaces
{
    public interface IColorService
    {
        Task<List<ColorViewModel>> GetColors();
    }
}
