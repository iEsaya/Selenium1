from selenium import webdriver
import time

driver = webdriver.Chrome("/Users/user/PycharmProjects/Selenium/Selenium-/Drivers/chromedriver")
# driver = webdriver.Firefox()
# driver = webdriver.Ie()

driver.set_page_load_timeout(10)

driver.get("http://google.com")
driver.find_element_by_name("q").send_keys("Siemka Adam - działa?")

time.sleep(4)
driver.quit()
