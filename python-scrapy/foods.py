import requests
from fake_useragent import UserAgent
from lxml import etree
import random
import json
import re
import pymysql
from tqdm import tqdm

# https://i3.meishichina.com/attachment/recipe/2021/10/05/2021100516334261328321958079.jpg?x-oss-process=style/c320
# https://i3.meishichina.com/attachment/recipe/2021/10/05/2021100516334227666761958079.jpg?x-oss-process=style/c320
# https://i3.meishichina.com/attachment/recipe/2021/10/05/2021100516334346928971958079.jpg?x-oss-process=style/c320

headers = { "User-Agent": UserAgent().random}
proxies = {}
url = ""
urls = []
conn = pymysql.connect("localhost", "root", "root", "delicious")

def getData():
  response = requests.get(url=url, headers=headers, proxies=proxies)
  response.encoding = 'utf-8'
  tree = etree.HTML(response.text)
  # name img price type material content
  li_list = tree.xpath('//div[@id="J_list"]/ul/li')
  for i in li_list:
    type = tree.xpath('//h1[@class="on"]//text()')[0]
    img_url = i.xpath('./div[@class="pic"]/a/img/@data-src')[0]
    name = i.xpath('./div[@class="detail"]//a/@title')[0]
    material = i.xpath('./div[@class="detail"]/p[@class="subcontent"]/text()')[0].replace("\n", "").replace("\t", "")
    url2 = i.xpath('./div[@class="pic"]/a/@href')[0]
    r = requests.get(url=url2, headers=headers, proxies=proxies)
    r.encoding = "utf-8"
    tree2 = etree.HTML(r.text)
    try:
      content = tree2.xpath('//div[@id="block_txt1"]')[0].xpath("string(.)").replace("\n", "")
    except:
      content = ""
    p = re.compile(r'/([^/]+?)\?')
    img = p.findall(img_url)[0]
    r2 = requests.get(url=img_url, headers=headers, proxies=proxies)
    saveFile("D:/IDE/Code/delicious/jar/static/img/" +img, "wb", r2.content)
    price = random.randint(10, 60)
    saveData({"name": name, "img": "/api/img/" +img, "type": type, "price": price, "material": material, "content": content})
    
def saveFile(file, mode, data):
  with open(file, mode) as f:
    f.write(data)

def saveData(data):
  cursor=conn.cursor()
  sql = "INSERT INTO foods(name, img, type, price, material, content) VALUES(%s, %s, %s, %s, %s, %s)"
  cursor.execute(sql, (data["name"], data["img"], data["type"], data["price"], data["material"], data["content"]))

    
def ip_pool(url):
  headers={"User-Agent": UserAgent().random}
  response=requests.get(url, headers=headers).json()
  proxies_list=[]
  for i in response["data"]:
    ip=i["ip"]
    port=i["port"]
    ip_dict={"https": f"{ip}:{port}"}
    proxies_list.append(ip_dict)
    
  proxies=random.choice(proxies_list)
  return proxies

def init():
  global url, urls
  url = "https://home.meishichina.com/recipe/recai/"
  urls = ["https://home.meishichina.com/recipe/recai/", "https://home.meishichina.com/recipe/liangcai/",
          "https://home.meishichina.com/recipe/zhushi/", "https://home.meishichina.com/recipe/xiaochi/",
          "https://home.meishichina.com/recipe/xican/", "https://home.meishichina.com/recipe/hongbei/",
          "https://home.meishichina.com/recipe/yinpin/"]

def main():
  global proxies, url
  pool_url = "http://api.hailiangip.com:8422/api/getIp?type=1&num=10&pid=-1&unbindTime=60&cid=-1&orderId=O21052609290482758593&time=1633507023&sign=8d89be0d1396704cbffa86582cb4293b&noDuplicate=0&dataType=0&lineSeparator=0&singleIp="
  for i in tqdm(urls, position=1):
    proxies = ip_pool(pool_url)
    for n in tqdm(range(20), position=0):
      if (i != 0):
        url = i+ "page/" +str(n+1)
      else:
        url = i
      try:
        data = getData()
        conn.commit()
      except:
        proxies = ip_pool(pool_url)
        print("抓取失败!")

if __name__ == "__main__":
  init()
  main()