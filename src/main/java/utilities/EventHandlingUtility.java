package utilities;

import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.Select;
import supportclasses.GenericBaseClass;

import java.io.IOException;
import java.util.List;

import static webdriver.AppDriver.driver;

public class EventHandlingUtility extends GenericBaseClass {
    private String value="";
    public void openFrame(WebElement menu, WebElement link, WebElement frame){
        moveToElement(menu);
        clickMenuItem(link);
        switchToFrame(frame);
    }

    private void moveToElement(WebElement menuItem){
        new Actions(driver).moveToElement(menuItem).build().perform();
    }

    private void clickMenuItem(WebElement link){
        new Actions(driver).moveToElement(link).click().perform();
    }

    private void switchToFrame(WebElement frame){
        driver.switchTo().frame(frame);
    }

    public void click(WebElement element){
        element.click();
    }

    public void clearValue(WebElement element){
        element.clear();
    }

    public void enterText(WebElement textfield, String text){
        textfield.sendKeys(text);
    }

    void pressEnter(WebElement textfield){
        textfield.sendKeys(Keys.ENTER);
    }

    public void enterText(WebElement textfield, int n) {
        for (int i=0; i<n; i++) {
            textfield.sendKeys("a");
            value= value+"a";
        }
    }

    public void selectByVisibleText(WebElement element, String text) throws InterruptedException {
        new Select(element).selectByVisibleText(text);
        Thread.sleep(100);
    }

    public void selectByIndex(WebElement element, int index) throws InterruptedException {
        new Select(element).selectByIndex(index);
        Thread.sleep(100);
    }

    //click particular cell of table
    private void selectValueFromTable(WebElement table, String value) throws IOException {
        List<WebElement> cells=readFile.getElements(fileUI, "cell");
        for(WebElement cell: cells) {
            if (cell.getText().equals(value)){
                //System.out.println("cell value"+cell.getText());
                cell.click();
                break;
            }
        }
    }

    public void selectDate(WebElement date, String mm, String yy, String dd) throws IOException, InterruptedException {
        click(date);
        dm.waitUntil((readFile.getElement(fileUI,"monthpicker")),20);
        readFile.getElement(fileUI,"monthpicker");
        dm.waitUntil(readFile.getElement(fileUI,"monthpicker"),200);
        selectByVisibleText(readFile.getElement(fileUI,"monthpicker"), mm);
        dm.waitUntil(readFile.getElement(fileUI,"yearpicker"),20);
        selectByVisibleText(readFile.getElement(fileUI,"yearpicker"), yy);
        dm.waitUntil(readFile.getElement(fileUI,"daypicker"),200);
        selectValueFromTable(readFile.getElement(fileUI,"daypicker"), dd);
        Thread.sleep(500);
    }
}
