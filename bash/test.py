import re

with open('input.txt', encoding='utf-8') as file:
    text = file.read()
x = re.findall('(> [0-9][0-9]:[0-9][0-9]<)|(>KM <|>SKM <)|(>[a-zA-ZąęłńóśżźĄĘŁŃÓŚŻŹ ]*</span></strong>)', text)
for i in range(5):
    print(f"Godzina: {x[0][0][1:-1]}, Stacja docelowa: {x[2][2][1:-16]}, Oznaczenie przewoźnika: {x[1][1][1:-1]}")
    x.pop(0)
    x.pop(0)
    x.pop(0)
