using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Renting.Startup))]
namespace Renting
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
