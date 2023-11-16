from selenium import webdriver
from selenium.webdriver.firefox.service import Service as FirefoxService
from selenium.webdriver.firefox.options import Options
from selenium.webdriver.common.by import By
import json

def scrape_pikiran_rakyat_selenium_firefox():
    url = "https://www.pikiran-rakyat.com/"

    # Menggunakan Firefox WebDriver (GeckoDriver)
    gecko_path = "C:/Users/Anugerah Bayu P/AppData/Local/Programs/Python/Python311/Scripts/geckodriver.exe"  # Sesuaikan dengan path ke geckodriver di komputer Anda
    firefox_path = "C:/Program Files/Mozilla Firefox/firefox.exe"  # Sesuaikan dengan path ke firefox.exe di komputer Anda

    # Menentukan opsi Firefox
    firefox_options = Options()
    firefox_options.binary_location = firefox_path

    # Menentukan service (GeckoDriver)
    firefox_service = FirefoxService(executable_path=gecko_path)

    # Membuat objek WebDriver
    driver = webdriver.Firefox(service=firefox_service, options=firefox_options)

    try:
        driver.get(url)

        # Menunggu hingga elemen yang diinginkan muncul (Anda dapat menyesuaikan waktu menunggu sesuai kebutuhan)
        driver.implicitly_wait(10)

        news_data = []

        # Mengambil judul dan isi berita terpopuler
        for article in driver.find_elements(By.XPATH, "//article"):
            title_element = article.find_element(By.XPATH, ".//h3")
            description_element = article.find_element(By.XPATH, ".//div[@class='p']")

            title = title_element.text.strip()
            content = description_element.text.strip()

            news_data.append({'title': title, 'content': content})

        # Menyimpan hasil ke dalam file JSON
        with open('pikiran_rakyat_data.json', 'w', encoding='utf-8') as json_file:
            json.dump(news_data, json_file, ensure_ascii=False, indent=4)

        print("Data berhasil disimpan ke dalam pikiran_rakyat_data.json")

    finally:
        # Menutup browser setelah selesai
        driver.quit()

if __name__ == "__main__":
    scrape_pikiran_rakyat_selenium_firefox()
