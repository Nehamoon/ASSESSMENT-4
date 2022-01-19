using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Assessment4_2.Startup))]
namespace Assessment4_2
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
