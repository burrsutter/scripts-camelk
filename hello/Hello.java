import org.apache.camel.builder.RouteBuilder;

public class Hello extends RouteBuilder {
    @Override
    public void configure() throws Exception {
        from("timer:tick")
            .setBody()
              .constant("Hello Java Camel K!")
            .to("log:info");
    }
}