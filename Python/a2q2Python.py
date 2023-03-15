200# -*- coding: utf-8 -*-
"""
Created on Fri Oct 22 14:30:33 2021

@author: mikes
"""


def main():
    
    # ask user for two inputs
   weight = int(input("Enter weight (pounds): "))
   height = int(input("Enter heights (inches): "))
   
   
   
   # This was the calculation on CDC website
   bmi = (weight/height**2) * 720
   
   print("BMI is ", bmi)
   
   # calculate if the bmi is too low, middle, or hight
   if(bmi < 18.5):
       print("underweight")
   elif (bmi >= 18.5 and bmi < 24.9):
        print("normal")
   elif(bmi>=25 and bmi < 29.9):
       print("overweight")
   else:
        print("obese")


main()