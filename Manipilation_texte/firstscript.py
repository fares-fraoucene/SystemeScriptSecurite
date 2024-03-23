import csv

data = [
	['Jean', 25,'Paris'],
	['Marie',30,'Lyon'],
	['Pierre',22,'Marseille'],
	['Sophie',35,'Toulouse']
	]

with open('fichier.csv', 'w', newline = '') as f:
	writer = csv.writer(f)
	for ligne in data:
		writer.writerow(ligne)

print('fichier créer')
