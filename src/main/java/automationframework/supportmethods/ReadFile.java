package automationframework.supportmethods;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Properties;

import static webdriver.AppDriver.driver;

public class ReadFile {
    private Properties properties = new Properties();

    private FileInputStream readFile(File file) throws FileNotFoundException {
        return new FileInputStream(file);
    }

    public String readProperty(File file, String key) throws IOException {
        String value=null;
        if (file.exists()){
            properties.load(readFile(file));
            value= properties.getProperty(key);
        }
        return value;
    }

    public WebElement getElement(File file, String element) throws IOException {

        String locator= readProperty(file, element+"type");
        String value= readProperty(file, element);
        WebElement webelement=null;

        if (locator.equalsIgnoreCase("id"))
            webelement= driver.findElement(By.id(value));
        if (locator.equalsIgnoreCase("name"))
            webelement= driver.findElement(By.name(value));
        if (locator.equalsIgnoreCase("xpath"))
            webelement= driver.findElement(By.xpath(value));
        if (locator.equalsIgnoreCase("linktext"))
            webelement= driver.findElement(By.linkText(value));
        if (locator.equalsIgnoreCase("tagname"))
            webelement= driver.findElement(By.tagName(value));
        if (locator.equalsIgnoreCase("cssSelector"))
            webelement= driver.findElement(By.cssSelector(value));
        if (locator.equalsIgnoreCase("classname"))
            webelement= driver.findElement(By.className(value));

        return webelement;
    }

    public List<WebElement> getElements(File file, String element) throws IOException {

        String locator= readProperty(file, element+"type");
        String value= readProperty(file, element);
        List<WebElement>webelement= null;

        if (locator.equals("id"))
            webelement= driver.findElements(By.id(value));
        if (locator.equals("name"))
            webelement= driver.findElements(By.name(value));
        if (locator.equals("xpath"))
            webelement= driver.findElements(By.xpath(value));
        if (locator.equalsIgnoreCase("linktext"))
            webelement= driver.findElements(By.linkText(value));
        if (locator.equalsIgnoreCase("tagname"))
            webelement= driver.findElements(By.tagName(value));
        if (locator.equalsIgnoreCase("cssSelector"))
            webelement= driver.findElements(By.cssSelector(value));
        if (locator.equalsIgnoreCase("classname"))
            webelement= driver.findElements(By.className(value));

        return webelement;
    }
}
