using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Jayrock.Json;
using Jayrock.JsonRpc;
using Jayrock.JsonRpc.Web;
using System.Data;

namespace NaturalGarden.Service
{
    /// <summary>
    /// Summary description for ProductService
    /// </summary>
    public class ProductService : JsonRpcHandler
    {
        [JsonRpcMethod("greetings")]
        public string Greetings()
        {
            return "welcome to NaturalGraden";
        }

        [JsonRpcMethod("getProduct")]
        public ProductInfo GetProduct(string id)
        {
            return new ProductInfo(id);
            
        }
    }
}