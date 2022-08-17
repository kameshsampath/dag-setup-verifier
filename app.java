//usr/bin/env jbang "$0" "$@" ; exit $?
//REPOS nexus
//DEPS io.quarkus.platform:quarkus-bom:2.11.2.Final@pom
//DEPS io.quarkus:quarkus-resteasy-reactive
//JAVAC_OPTIONS -parameters
//JAVA_OPTIONS -Djava.util.logging.manager=org.jboss.logmanager.LogManager

import io.quarkus.runtime.Quarkus;
import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import org.jboss.logging.Logger;

@Path("/")
@ApplicationScoped
public class app {
  @GET
  public String sayHello() {
      return "Hello from Captain Canary!!\uD83D\uDC25🚀";
  }

  public static void main(String[] args) {
      Quarkus.run(args);
  }

  @Inject
  GreetingService service;

  @GET
  @Produces(MediaType.TEXT_PLAIN)
  @Path("/greeting/{name}")
  public String greeting(String name) {
      return service.greeting(name);
  }

  @ApplicationScoped
  static public class GreetingService {

      public String greeting(String name) {
          return "Hello " + name+", from Captain Canary!!\uD83D\uDC25🚀";
      }
  }
}
