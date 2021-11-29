Визуализация персонажей Звездных войн
================
Korsakova Daria

### Взглянем на фрейм starwars.

``` r
glimpse(starwars)
```

    ## Rows: 87
    ## Columns: 14
    ## $ name       <chr> "Luke Skywalker", "C-3PO", "R2-D2", "Darth Vader", "Leia Or~
    ## $ height     <int> 172, 167, 96, 202, 150, 178, 165, 97, 183, 182, 188, 180, 2~
    ## $ mass       <dbl> 77.0, 75.0, 32.0, 136.0, 49.0, 120.0, 75.0, 32.0, 84.0, 77.~
    ## $ hair_color <chr> "blond", NA, NA, "none", "brown", "brown, grey", "brown", N~
    ## $ skin_color <chr> "fair", "gold", "white, blue", "white", "light", "light", "~
    ## $ eye_color  <chr> "blue", "yellow", "red", "yellow", "brown", "blue", "blue",~
    ## $ birth_year <dbl> 19.0, 112.0, 33.0, 41.9, 19.0, 52.0, 47.0, NA, 24.0, 57.0, ~
    ## $ sex        <chr> "male", "none", "none", "male", "female", "male", "female",~
    ## $ gender     <chr> "masculine", "masculine", "masculine", "masculine", "femini~
    ## $ homeworld  <chr> "Tatooine", "Tatooine", "Naboo", "Tatooine", "Alderaan", "T~
    ## $ species    <chr> "Human", "Droid", "Droid", "Human", "Human", "Human", "Huma~
    ## $ films      <list> <"The Empire Strikes Back", "Revenge of the Sith", "Return~
    ## $ vehicles   <list> <"Snowspeeder", "Imperial Speeder Bike">, <>, <>, <>, "Imp~
    ## $ starships  <list> <"X-wing", "Imperial shuttle">, <>, <>, "TIE Advanced x1",~

### Модифицируйте следующий график для замены цвета всех точек на розовый (`"pink"`).

``` r
ggplot(starwars, 
       aes(x = height, y = mass, color = gender, size = birth_year)) +
  geom_point(color = "pink")
```

    ## Warning: Removed 51 rows containing missing values (geom_point).

![](starwars_files/figure-gfm/scatterplot-1.png)<!-- -->

### Добавьте заголовок и подписи к осям и легенде. Раскомментируйте строчки, чтобы увидеть результат.

``` r
ggplot(starwars, 
       aes(x = height, y = mass, color = gender, size = birth_year)) +
  geom_point(color = "#30509C") +
  labs(
    title = "Зависимость роста от веса",
    x = "Рост", 
    y = "Вес"
    )
```

    ## Warning: Removed 51 rows containing missing values (geom_point).

![](starwars_files/figure-gfm/scatterplot-labels-1.png)<!-- -->

### Выберите одну категориальную переменную из набора данных и постройте столбчатый график ее распределения.

(Небольшой фрагмент стартового кода представлен ниже и этот фрагмент
кода не будет исполняться (настройка `eval = FALSE`), поскольку
имеющийся код синтаксически некорректен и не может быть исполнен, что
заблокирует весь документ. Когда вы дополните этот код, замените
настройку фрагмента на `eval = TRUE` либо вообще удалите опцию `eval`).

``` r
ggplot(starwars, aes(x = eye_color)) +
  geom_bar() +
 labs(
    title = "Распределение цвета глаз у персонажей",
    x = "Цвет глаз", 
    y = "Количество"
    )
```

![](starwars_files/figure-gfm/barplot-1.png)<!-- -->

### Выберите одну числовую переменную из набора данных и постройте гистограмму ее распределения.

(На сей раз стартового фрагмента кода нет, работайте самостоятельно!)

``` r
ggplot(starwars, aes(x = mass)) + 
  geom_histogram() +
  labs(
    x = "Вес",
    y = "Частота",
    title = "Распределение веса"
)
```

    ## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.

    ## Warning: Removed 28 rows containing non-finite values (stat_bin).

![](starwars_files/figure-gfm/histogram-1.png)<!-- -->

### Выберите числовую и категориальную переменные и создайте визуализацию (вы сами выбираете тип!) отношения между этими переменными. Помимо вашего кода и результата, изложите интерпретацию вашей визуализации.

``` r
ggplot(starwars, aes(y = height,
                  x = gender)) +
  geom_boxplot() +
  labs(
    x = "Пол",
    y = "Рост",
    title = "Распределение роста персонажей в зависимости от пола"
  )
```

    ## Warning: Removed 6 rows containing non-finite values (stat_boxplot).

![](starwars_files/figure-gfm/num-cat-1.png)<!-- --> \#\#\# Вывод:
Наблюдается наибольший разброс веса у masculine, медианные значения
также выше. Кроме того, присутствует неопредленные пол, у которого
медианное значение роста также выше, чем у feminine и находится примерно
на уровне masculine, однако разброса данных не наблюдается.

### Выберите две категориальные переменные и создайте визуализацию отношения между этими переменными. Помимо вашего кода и результата, изложите интерпретацию вашей визуализации.

``` r
ggplot(starwars, aes(x = gender, 
                  fill = hair_color)) +
  geom_bar() +
  labs(
    x = "Пол",
    y = "Количество",
    title = "Распределение цвета волос персонажей по каждому полу"
  )
```

![](starwars_files/figure-gfm/cat-cat-1.png)<!-- -->

### Вывод: У maculine в большей степень цвет волос не задан, в остальных случаях в большинстве своем волосы - коричневого или черного цвета. Также есть персонажи блондины, с белым и каштановым цветом волос. У feminine - в основном коричневые волосы или черные. Есть те, у кого неизвестен пол - у них в равной степени отмечаются разные оттенки. И в целом среди персонажей наблюдается большее количество musculine.

### Выберите две числовые и две категориальные переменные и создайте визуализацию, которая включает все эти переменные. Изложите интерпретацию вашей визуализации.

``` r
ggplot(starwars,
       aes(x = mass, 
           y = birth_year,
           colour = hair_color,
           shape = gender)) +
  geom_point() +
  scale_colour_viridis_d()
```

    ## Warning: Removed 55 rows containing missing values (geom_point).

![](starwars_files/figure-gfm/multi-1.png)<!-- -->
