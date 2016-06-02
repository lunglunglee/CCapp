using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Capp.Startup))]
namespace Capp
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
