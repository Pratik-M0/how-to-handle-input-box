*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.flipkart.com/

*** Test Cases ***
TestingInputBox
    open browser    ${url}  ${browser}
    maximize browser window
    title should be    Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!
    click link  //a[@title="Login"]

    ${"email_txt"}   set variable  xpath://input[@class="r4vIwl BV+Dqf"]

    element should be visible   ${"email_txt"}
    element should be enabled   ${"email_txt"}

    Input Text  ${"email_txt"}  pratikmabrukhane19@gmail.com
    Sleep   5
    Clear Element Text  //input[@class="r4vIwl _5BVqVB BV+Dqf"]
    Sleep   3
    close browser

