import requests
from bs4 import BeautifulSoup
import json
import platform

def scrape_pikiran_rakyat():
    url = "https://www.pikiran-rakyat.com/"

    # Mendapatkan versi Windows
    windows_version = platform.version()

    # Mendapatkan versi Mozilla (disesuaikan dengan versi Chrome)
    mozilla_version = '119.0.0.0'

    # Menambahkan header HTTP untuk menyamarakan permintaan sebagai permintaan dari browser
    headers = {
        'User-Agent': f'Mozilla/5.0 ({windows_version}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/{mozilla_version} Safari/537.36'
    }

    # Mengirim permintaan HTTP ke situs web dengan header
    response = requests.get(url, headers=headers)

    # Memeriksa apakah permintaan berhasil (kode status 200)
    if response.status_code == 200:
        # Membuat objek BeautifulSoup untuk parsing HTML
        soup = BeautifulSoup(response.text, 'html.parser')

        # Mengambil data yang diinginkan dari halaman web
        news_data = []

        # Misalnya, mengambil judul dan URL artikel
        for article in soup.find_all('article'):
            title_element = article.find('h3')
            url_element = article.find('a')

            if title_element and url_element:
                title = title_element.text.strip()
                url = url_element['href'].strip()

                news_data.append({'title': title, 'url': url})

        # Menyimpan hasil ke dalam file JSON
        with open('pikiran_rakyat_data.json', 'w', encoding='utf-8') as json_file:
            json.dump(news_data, json_file, ensure_ascii=False, indent=4)

        print("Data berhasil disimpan ke dalam pikiran_rakyat_data.json")

    else:
        print(f"Gagal mengambil halaman web. Status code: {response.status_code}")

if __name__ == "__main__":
    scrape_pikiran_rakyat()
