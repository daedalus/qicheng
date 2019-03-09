import sys

sys.setrecursionlimit(1e5)

def factor_n(n):
    R = Integers(n)
    while True:
        a = R.random_element()
        # curve: y^2 = x^3 + a
        E = EllipticCurve([0, a])
        x = R.random_element()
        z = E.division_polynomial(n, x)
        g = gcd(z, n)
        if g > 1:
            return g

if False:
    b = 1<<256
    while True:
        p = (3*b^2 + 1) / 4
        if p.is_integer() and ZZ(p).is_prime():
            print(p)
        b += 1

print(factor_n(8586738020906178596816665408975869027249332195806516889218842326669979457567897544415936583733118068451112024495528372623268891464850844330698707082078341676048316328425781368868164458486632570090121972627446596326046274266659293352906034163997023314644106659615348855576648233885381655772208214809201687506171743157882478565146018301168224250821080109298362928393693620666868337500513217122524859198701942611835138196019213020523307383514277039557237260096859973))
