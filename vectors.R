a <- c(1,2,3,4,5)
assign("b",c(1,2,3,4,5))
c(1,2,3,4,5) -> c
# commentario = "Aqui no se empieza desde 0"
a[2]

logic = a > 3

a[a >3]; a[logic]


d <- c(a,0,a[a>3])

m = 2 * a + b -1

# Para sacar m cada numero de a se multiplica por su respectivo en b y se le resta uno.
# En el caso de que b sean más dígitos que en a, a se repite.

max(m)
min(m)
length(m)
sum(m)

order(m); sort.list(m)
m[order(m)]
m[order(m, decreasing = T)]
