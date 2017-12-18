using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CodeFighters.Startup))]
namespace CodeFighters
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
