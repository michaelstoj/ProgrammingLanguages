# -*- coding: utf-8 -*-
"""
Created on Fri Oct 22 14:22:48 2021

@author: mikes
"""


def main():
    
    acr = ""
    
    # ask user for input
    phrase = input("Enter your phrase: ")
    
    # split the pharese
    p = phrase.split()
    
    # loop through and grab the first letter and make it capital
    for l in p:
        
        # add it to the string
        acr = acr + l[0].upper()
        
    # print out the first letters all capital
    print("the acronym is", acr)
    
main()