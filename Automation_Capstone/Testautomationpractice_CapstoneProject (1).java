package VaishnaviMuley.AxisBank;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;

public class Testautomationpractice_CapstoneProject {
    public static void main(String[] args) throws InterruptedException {
        // Initialize Chrome WebDriver
        WebDriver web = new ChromeDriver();
   
        // Maximize the browser window
        web.manage().window().maximize();

        // 1. Launch the website
        web.get("https://testautomationpractice.blogspot.com/");
        
        // 2. Enter name in the name field
        web.findElement(By.id("name")).sendKeys("Agile Eleven");
      
        // 3. Clear the name and enter a new name
        Thread.sleep(1000);  
        web.findElement(By.id("name")).clear();
        Thread.sleep(1000); 
        web.findElement(By.id("name")).sendKeys("Agile Eleven A1");
        
        // 4. Print the value of the name field
        String nameValue = web.findElement(By.id("name")).getAttribute("value");
        System.out.println("Name = " + nameValue);
        
        // 5. Enter email address in the email field
        web.findElement(By.id("email")).sendKeys("agile11@gmail.com");
        
        // 6. Clear the email field and enter a new email
        Thread.sleep(1000);
        web.findElement(By.id("email")).clear();
        Thread.sleep(1000);
        web.findElement(By.id("email")).sendKeys("agile11.a1@gmail.com");
        
        // 7. Print the value of the email field
        String emailValue = web.findElement(By.id("email")).getAttribute("value");
        System.out.println("E-Mail = " + emailValue);

        // 8. Enter phone number in the phone field
        web.findElement(By.id("phone")).sendKeys("7219605663");

        // 9. Print the value of the phone field
        String phoneValue = web.findElement(By.id("phone")).getAttribute("value");
        System.out.println("Phone Number = " + phoneValue);
        
        // 10. Select Canada from the country dropdown
        Select country = new Select(web.findElement(By.id("country")));
        country.selectByValue("canada");
    
        // 11. Locate the color dropdown and select "Green"
        WebElement colorsList = web.findElement(By.xpath("//*[@id=\"colors\"]"));
        Select colorSelect = new Select(colorsList);
        colorSelect.selectByVisibleText("Green");
         
    }
}
