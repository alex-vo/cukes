package lv.ctco.cukes.rabbitmq;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        format = {"pretty", "json:target/cucumber.json"/*, "lv.ctco.cukes.core.formatter.CukesJsonFormatter:target/cucumber2.json"*/},
        features = {"classpath:features/"},
        glue = {"lv.ctco.cukes.rabbitmq", "lv.ctco.cukes.rest.api"},
        strict = true
)
public class CukesTests {
}