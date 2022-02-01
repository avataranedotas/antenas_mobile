#!/usr/bin/env python
# -*- coding: utf-8 -*-

import json
import sys
import collections
import csv

from datetime import datetime

# Opening JSON file
with open('./partilhadas.json') as json_file:
    datalatest = json.load(json_file)
 
    # debug mostrar o registo n
    
    #print (type(datalatest))
    #print (type(datalatest[0]))
    #print(datalatest[0])
    #print (type(datalatest[0]["evses"]))
    #print(datalatest[0]["evses"])

    
    # for printing the key-value pair of
    # nested dictionary for loop can be used
    #print("\nLista completa de id's\n")
    #for i in datalatest:
    #    print(i["id"])

#teste        
#print(datalatest[0]["id"])




#latestlist=list()    

#n=0
#for i in datalatest:
#    latestlist.append(i["id"])
#    n=n+1
#latestcount=n

#print ("Pontos actuais: ",latestcount)    
#print (latestlist[0])
#print (latestlist[1])

#get current time
#now = datetime.now()
#date_time = now.strftime("%Y-%m-%d %H:%M:%S")
#print("date and time:",date_time)



#ler pontos a vigiar
#with open('./watchbusy.txt', newline='') as busy_file:
#    reader = csv.reader(busy_file)
#    watchbusy = list (reader)


escreverfich=0


levelglobal=0


def findsemi(d1, path=""):
    global levelglobal
    global escreverfich
    global fich
    global watchbusy
    levelmax=0
    nomeactual=""
    if type(d1) is dict:
        #print ("            Start dict")        
        if ( "uid" in d1 ):
            #print (d1["uid"])
            nomeactual=d1["uid"]
        for k in d1:
            #print ("            Encontrar dentro dict")
            if (k == "MNC") :
                #print ("        Encontrado status level:")
                #print (levelglobal)
                #print (k)
                #verificar se estão na watch list
                #result = [ "%s " %nomeactual, "%s: " % path, "%s : %s" % (k, d1[k])]
                #levelmax=levelglobal
                #print("".join(result))  
                #fich.write ("".join(result))
                #fich.write("\n")
                

            levelglobal=levelglobal+1
            findsemi(d1[k], "%s -> %s" % (path, k) if path else k)
            levelglobal=levelglobal-1                

    elif type(d1) is list:
        n=0 
        for j in d1:
            #print ("            Percorrer lista")
            #print (n)
            #print (d1[n])
            #print ("            Encontrada lista, tentando entrar dentro da lista")   
            levelglobal=levelglobal+1      
            findsemi(d1[n], "%s -> %s" % (path, n) if path else n)
            levelglobal=levelglobal-1 
            n=n+1
        








#### Percorrer a árvore à procura do MNC com ponto e virgula
n=0
#for x in range(25):
for x in datalatest:
    m=0
    #procurar em cada um dos elementos
    findsemi(datalatest[n])
    n=n+1






if escreverfich == 1:
    fich.close()

