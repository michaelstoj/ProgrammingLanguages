# -*- coding: utf-8 -*-
"""
Created on Fri Oct 22 17:58:34 2021

@author: mikes
"""

import random as r

class Card:       

    # consturct card class with rank and suit
    def __init__(self, rank, suit):
        self.rank = rank
        self.suit = suit

    # get rank
    def getRank(self):
        return self.rank
    # get suit
    def getSuit(self):
        return self.suit
    # calculate count
    def getCount(self):
        if self.rank <=10:
            return self.rank
        else:
            return 10
        
        # print string of the class
    def __str__(self):
        # the ranks and suits
        ranks = ['ace','two','three','four','five','six','seven','eight','nine','ten','jack','queen','king']
        suits = ['dimond','club','heart','spade']
        
        # get the index of the card
        name = ranks[self.rank-1] + " of " 
        # match the suit with correct suit name
        if self.suit=='d':
            name += suits[0]
        elif self.suit=='c':
            name += suits[1]
        elif self.suit=='h':
            name += suits[2]
        elif self.suit=='s':
            name += suits[3]
        return name
        

def main():

    
    # ask user for input
   num = int(input("How many cards would you like to see: "))
  
   # run loop and create classes base on input 
   for i in range(num):      
       # randomly assing rank
       rank = r.randrange(1,13)
       # randomly assign suit
       suit = ['d','c','h','s'][r.randrange(0,4)]
       # create class
       c = Card(rank, suit)
       # print the name and get it's count
       print(c, "counts" , c.getCount())
       

main()





