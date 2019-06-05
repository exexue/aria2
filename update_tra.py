#coding:utf-8
import urllib.request

req = urllib.request.urlopen('https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_all.txt')

tracker = req.read().decode('utf-8')

tracker = tracker.replace('/announce','/announce,')
tracker = tracker.replace("\n", "")

f = open('/root/.aria2/aria2.conf','r',encoding="utf-8")
conf_txt = f.read()
f.close()
x = conf_txt.find('bt-tracker=')
conf = conf_txt[0:x] + "bt-tracker="+tracker
#print(conf)

f = open('/root/.aria2/aria2.conf','w',encoding="utf-8")

f.write(conf)
f.close()

print('ok')
