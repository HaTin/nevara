﻿using System;
using System.Linq;
using System.Security.Claims;

namespace Nevara.ApplicationCore.Extensions
{
    public static class IdentityExtensions
    {
        public static string GetClaim(this ClaimsPrincipal claimsPrincipal, string claimType)
        {
            var claim = claimsPrincipal.Claims.FirstOrDefault(x => x.Type == claimType);
            return (claim != null) ? claim.Value : String.Empty;
        }     
    }
}
