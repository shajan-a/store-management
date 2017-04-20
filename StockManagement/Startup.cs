using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(StockManagement.Startup))]
namespace StockManagement
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
