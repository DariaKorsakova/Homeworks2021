#У нас есть пять наблюдений температуры в градусах Цельсия: 21, 12, 20, 16 и 21. Создайте из них вектор t.celsius. Преобразуйте значения температуры в градусы Фаренгейта и сохраните результат в вектор t.fahrengeit.

t.celsius <- c(21, 12, 20, 16, 21)
t.fahrengeit <- t.celsius * 9 /5 + 32

#2. Создайте следующий вектор n1 с помощью векторизованных арифметических операций:(0.373∗0.943,0.375∗0.945,0.377∗0.947,...,0.3717∗0.9417)

(c <- seq(3, 17, by  = 2))
(f <- rep(c(0.37), times = 8))
(s <- rep(c(0.94), times = 8))
n1 <- f^c * s^c

#3 Cоздайте следующий вектор n2 с помощью векторизованных арифметических операций:
(c <- seq(1, 17, by  = 1))
(f <- rep(c(3), times = 17))
(s <- seq(2, 34, by  = 2))
n2 <- f^c / s

#4 Рассчитайте следующую сумму:

i <- c(0:11)
n <- 3 * i ^ 3 + i ^ 4
sum(n)

#53042

#5. Вычислите сумму чисел от 9 до 71, кратных 7, с использованием функции sum().
c <- c(9:71)
sum(c[c %% 7 == 0])


#6 Следующая команда генерирует набор из 250 случайных чисел от 1 до 1000.

#n3 <- sample(1:1000, 250)

#Выполните ее. Выберите в вектор n4 элементы вектора n3, превышающие среднее значение.

n3 <- sample(1:1000, 250)
n4 <- n3[n3 > mean(n3)]

#7 Вычислите произведение 7 наименьших элементов вектора n3.

prod(sort(n3)[1:7])

#4826304

#8 Вычислите сумму обычных рангов 8 первых элементов вектора n3.

sum(rank(n3[1:8]))
#36

#9 Вычислите сумму рангов элементов c 26-го по 27-й вектора n3 при ранжировании от большего к меньшему.
(n5 <- sort(n3, decr = T))
sum(rank(n5)[26:27])
#449


#1 Создайте следующую матрицу m1:

m <- seq(211, 387, by = 4)
m1 <- matrix(m, nrow = 9, ncol = 5)

#2 Выберите в матрицу m2 элементы матрицы m1, находящиеся на пересечении строк 3, 8 и 9, и столбцов 2, 3 и 5.

m2 <- m1[c(3, 8, 9), c(2, 3, 5)]

#3Рассчитайте максимум элементов матрицы m2.

max(m2)
#387

#4 Рассчитайте сумму элементов столбца 1 матрицы m1.

colSums(m1)[1]
#2043

#5 Создайте следующие вектора Объедините их в матрицу с помощью функции cbind().:
## [1] 3 20 6 18 13 5

## [1] 5 8 15 12 18 11

a <- c(3, 20, 6, 18, 13, 5)
b <- c(5, 8, 15, 12, 18, 11)
m3 <- cbind(a, b)

#6 Создайте следующий список ls:
## $nums ## [1] 2 3 4 5 6 7 8 9 10 11 ## ## $bool ## [1] FALSE FALSE FALSE TRUE TRUE TRUE ## ## $matrix ## [,1] [,2] [,3] ## [1,] 211 247 283 ## [2,] 215 251 287 ## [3,] 219 255 291

ls <- list(nums = 2:11,
            bool = rep(c(F,T), each = 3),
            mat = m1[c(1, 2, 3), c(1, 2, 3)])

#7 Рассчитайте среднее значение элементов матрицы, содержащейся в списке ls. Для обращения к ней используйте оператор [[ ]].

mean(ls[[3]])
# 251

#8 Рассчитайте отношение 1-го и 2-го элементов вектора, содержащегося в списке ls. Для обращения к вектору используте оператор $.

ls$nums[1] / ls$nums[2]

#0.6666667

#9 Преобразуйте логический вектор, содержащийся в списке ls, в числовой вектор и вычислите его сумму.

sum(as.numeric(ls[[2]]))
#3