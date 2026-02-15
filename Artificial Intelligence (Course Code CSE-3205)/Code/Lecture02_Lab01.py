"""""
Lab Work 1: 
Simple Reflex Agent Title: Thermostat Agent Simulation 
Task: 
Write a program that: Takes temperature as input Turns heater ON if temperature < 20 Turns heater OFF otherwise Concept: Simple reflex agent
"""

# Thermostat Agent Simulation
temperature = float(input("Enter current temperature: "))

# condition
if temperature < 20:
    print("Heater ON")
else:
    print("Heater OFF")
