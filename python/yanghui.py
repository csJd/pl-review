def triangles():
    L = [1]
    while True:
        yield L
        L.append(0)
        L = [L[i] + L[i-1] for i in range(len(L))]

g = triangles()
lineMax = 5
for i in range(lineMax):
    print(next(g))
