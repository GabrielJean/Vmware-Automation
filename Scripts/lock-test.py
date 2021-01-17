import time




file = open("test.txt", "w")

file.write("Bonjour")

time.sleep(20)

file.write("Bonsoir")

file.close()