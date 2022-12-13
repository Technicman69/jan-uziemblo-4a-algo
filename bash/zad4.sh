# Tak oto tworzy się wirusy (jeśli ktokolwiek to czyta: to nie jest wirus, powtarzam, to nie jest wirus, program po prostu tworzy plik pythonowy sprawdzający rozkłady jazdy kolei, nic więcej)
wget -O input.txt https://portalpasazera.pl/KatalogStacji?stacja=WARSZAWA+OCHOTA
echo "import re" >> test.py
echo "" >> test.py
echo "with open('input.txt', encoding='utf-8') as file:" >> test.py
echo "    text = file.read()" >> test.py
echo "x = re.findall('(> [0-9][0-9]:[0-9][0-9]<)|(>KM <|>SKM <)|(>[a-zA-ZąęłńóśżźĄĘŁŃÓŚŻŹ ]*</span></strong>)', text)" >> test.py
echo "for i in range(5):" >> test.py
echo "    print(f'Godzina: {x[0][0][1:-1]}, Stacja docelowa: {x[2][2][1:-16]}, Oznaczenie przewoźnika: {x[1][1][1:-1]}')" >> test.py
echo "    x.pop(0)" >> test.py
echo "    x.pop(0)" >> test.py
echo "    x.pop(0)" >> test.py
echo "" >> test.py
python3 test.py
# Usuwamy dowody
rm test.py
rm input.txt
