# -*- coding: utf-8 -*-
"""
Created on Fri Oct 22 14:46:49 2021

@author: mikes
"""

def main():
    
    # ask user for input
   num = int(input("Enter an initial values (int >=1): "))
   print(num)
   
   # run loop while number is greater than one and use the function
   # to calculate the new number
   while(num>1):
       if(num%2 == 0):
           num = num/2
           print(num)
       else:
           num = 3 * num + 1
           print(num)

main()