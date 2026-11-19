package nguyen.loombok.config;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;

public class SiteMeshConfig extends ConfigurableSiteMeshFilter {

    @Override
    protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
        builder.addDecoratorPath("/*", "/WEB-INF/decorators/layout.jsp")
               .addExcludedPath("/login*")
               .addExcludedPath("/register*")
               .addExcludedPath("/forgetpassword*");
    }
}
