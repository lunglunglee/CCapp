using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CCapp.Startup))]
namespace CCapp
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
