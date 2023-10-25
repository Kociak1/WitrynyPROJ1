import random
random.seed(2)
print(random.random())

RandomGen= random.Random()
number = RandomGen.random()
print(number)

number = RandomGen.randint(0,3)
print(number)


class Mysliwiec:
    def __init__(self,typMysliwca,szybkosc=0,waga=0,ladownosc=0):
        self.typ=typMysliwca
        self.szybkosc=szybkosc
        self.waga=waga
        self.ladownosc=ladownosc
    def zwrocDane(self):
        print(self.typ+", szybkosc: "+str(self.szybkosc))
DuchKijowa= Mysliwiec("Mig 20")
DuchKijowa2= Mysliwiec("Mig 20",1,4,6)

print(len([1,2,3]))
print([1,2,3].__len__())


print(DuchKijowa2.szybkosc)
DuchKijowa.zwrocDane()

import collections

Card =collections.namedtuple('card', ['rank','suit']) #rank figura suit kolor
class PolishDeck:
    ranks=[str(n) for n in range(2,11)]+list('WDKA')
    suits = 'spades diamonds clubs hearts'.split()
    def __init__(self):
        self._cards = [Card(rank,suit) for suit in self.suits
                      for rank in self.ranks]
    def __len__(self):
        return len(self._cards)
    def __getitem__(self,position):
        return self._cards[position]

deck= PolishDeck()

print(len(deck))
print(deck[0])
print(deck[-1])
print(deck[:3])
print(deck[12::13])

for card in reversed(deck):
    print(card)

print(Card('D','hearts') in deck)
print(Card('D','ffg') in deck)


suit_values=dict(spades=3,hearts=2,diamonds=1, clubs=0)

def spiders_high(card):
    rank_value=PolishDeck.ranks.index(card.rank)
    return rank_value+len(suit_values)+suit_values[card.suit]

for card in sorted(deck,key=spiders_high):
    print(card)


import random
#kierunek=[random.choice(-1,1) for i in range(6)]
wspolrzedne=[]
x=2
#for y in range(6):
#    if(x+kierunek[y]) ==0:
#        x=2
#    elif(x+kierunek[y])>8:
#        x=7
 #   else:
 #       y+=kierunek[y]
#        wspolrzedne.append(x,y+2)

plansza =[8*[0] for _ in range(8)]
ilosc=0
while (ilosc <12):
    x= random.choice(range(8))
    y= random.choice(range(8))
    czarne = ((x+y)%2)==1
    if(czarne) and plansza[y][x]==0:
        plansza[y][x]=1
        ilosc+=1
for y in range(8):
    print(plansza[y])

PRAWO=1
LEWO=-1
class Pionek:
    x=y=1
    def __init__(self, x,y):
        self.x=x
        self.y=y
    def losowe_ruchy(self):
        while self.y <8:
            self.y+=1
            dx= random.choice([PRAWO,LEWO])
            if(self.x+dx==0) or self.x+dx>8:
                self.x+=dx
            else:
                self.x-=dx
            yield(self.x,self.y)
p=Pionek(1,1)
wspolrzedne= [_ for _ in p.losowe_ruchy()]