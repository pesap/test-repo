from itertools import permutations

perms = [''.join(p) for p in permutations('esenbndmfrae',6) if p[1] =='s']
print len(perms)
print len(set(perms))
