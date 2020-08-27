import bs4 as bs
import pymysql
import urllib.request
import numpy as np
import sys
from PyQt5.QtWidgets import *
from PyQt5 import QtWidgets
import matplotlib.pyplot as plt

def Pencere():
    app = QtWidgets.QApplication(sys.argv)
    pencere = QtWidgets.QWidget()
    pencere.setWindowTitle("Toyota - Programlama")
    kaynak = urllib.request.urlopen("https://www.arabam.com/ikinci-el/otomobil/toyota").read()
    sayfa = bs.BeautifulSoup(kaynak, 'lxml')
    toplam = 0
    arabafiyatliste = []
    arababaslikliste = []
    fiyatlar = sayfa.find_all("a", {"class": "listing-price"})
    basliklar = sayfa.find_all("a", {"class": "listing-text-new word-break"})
    for fiyat in fiyatlar:
        fiyat = fiyat.text
        fiyat = fiyat.replace('TL', '')
        fiyat = fiyat.replace('.', '')
        fiyat = ''.join(fiyat.split())
        arabafiyatliste.append(fiyat)
    for baslik in basliklar:
        baslik = baslik.text
        arababaslikliste.append(baslik)
        
    combinedata = dict(zip(arababaslikliste, arabafiyatliste))
    conn = pymysql.connect(host="45.139.200.14", user="mehmet", passwd="125346798***ma", db="odevdb")
    cur = conn.cursor()
    cursor = conn.cursor(pymysql.cursors.DictCursor)
    isim1 = "araba_ad"
    isim2 = "araba_fiyat"


    def temizle():
        cursor.execute(
            ''' DELETE FROM araba''')
        conn.commit()
    temizle()


    def verigüncelle():
        for (isim1, isim2) in zip(arababaslikliste, arabafiyatliste):
            cursor.execute(
                '''INSERT INTO araba (araba_ad,araba_fiyat)
                   VALUES (%s, %s)''',
                (isim1, isim2))
            conn.commit()
    verigüncelle()
    grid = QGridLayout()
    tw = QTreeWidget()
    tw.setColumnCount(2)
    tw.setHeaderLabels(["Araba", "Fiyatı"])
    vericekmequery = "SELECT * FROM `araba`"
    cursor.execute(vericekmequery)
    veri = cursor.fetchall()
    for row in veri:
        l1 = QTreeWidgetItem([row['araba_ad'], (str(row['araba_fiyat'])+" TL")])
        tw.addTopLevelItem(l1)
    arraylist = []
    arrayliste = []
    Tanım1=QtWidgets.QLabel("Bütün arabalar satılınca elde edilen tutar:")
    arabafiyatlistea = np.array(arabafiyatliste).astype(np.float)
    fiyatlartoplamı = np.sum(arabafiyatlistea)
    sonuc = QtWidgets.QLabel(str(int(fiyatlartoplamı))+" TL") 

    grid.addWidget(tw,0,1)
    grid.addWidget(Tanım1,1,1)
    grid.addWidget(sonuc, 1, 2)
    conn.commit()
    pencere.setLayout(grid)  
    pencere.show()  
    sys.exit(app.exec_())

Pencere()
