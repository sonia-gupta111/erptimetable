package webdriver;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static webdriver.AppDriver.driver;

public class DriverMethods {
    public void maximizeWindow(){
        driver.manage().window().maximize();
    }

    public void getUrl(String url){
        driver.get(url);
    }

    public void switchToParentWindow(){
        driver.switchTo().defaultContent();
    }

    public void waitUntil(WebElement webelement, int time){
        WebDriverWait wait= new WebDriverWait(driver, time);
        wait.until(ExpectedConditions.visibilityOf(webelement));
    }
}
