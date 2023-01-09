#Uso de xpatch

##Web para ver xpatch
http://xpather.com/

Selecciona todos los titulos que esten dentro de un <a> y que esten en un <article>
//article//a/./@title

Trae todos los que esten en <article>
//article//a/.

Trae todos los que esten en <article> y su arbol hacia abajo
  //article//a/..

Trae todas clases que esten en <article> 
  //article//a/../@class

Trae todas las clases en general
//@class

Trae todos los <title> que esten en un <a> 
  //a/@title

Trae todos los <title> que esten en un <a> y sus href
  //a[@title]

Trae todos los href que contengan un <title> y que esten en un <a>, silve para filtrar por tags
  //a[@title]/@href

Trae todos los href que esten en un <a>
  //a//@href

Enumera la cantidad de <a>
  //a[*]

Trae todo elemento que tenga atributos
  //*[@*]

Trae todo los elementos que tengan un atributo <title>
  //*[@*]/@title

Trae todos los elementos que esten dentro de un div con las clase row, y sus subniveles
  //div[@class="row"]

Trae todos los elementos que tengan un div que tenga la clase exacta "col-sm-8 h1", si no se ponen todo los atributos, ya no lo encuentra. Por ejemplo "col-sm-8" no lo encontraria, por que le falta el h1.
  //div[@class="col-sm-8 h1"]

Trae todos los elementos de tipo clase que contengan "col-sm-8"
  //div[contains(@class, "col-sm-8")]

Trae todos los elementos que sean de tipo texto que coincidan con la palabra "Book", hay que tener en cuenta que es sensible a las mayuculas y minusculas
  //*[text()[contains(., "Book")]]

Trae todos los elementos que sean de tipo texto que coincidan con la palabra "Book", en un tag <a>
  //a[text()[contains(., "Book")]]

Trae los elementos que al contarlos tengan (3) li, contando desde 0.
  //*[count(.//li)=2]

  
Trae los elementos que al contarlos tengan (3) li, contando desde 0. y los lista.
  //*[count(.//li)=20]/li

Trae todos los elementos que tengan hijos de tipo div.
  //div/following-sibling::div

Trae todos los elementos que esten antes o presedan antes de un <div>
  //div/preceding-sibling::div

Trae todos los elementos que esten de primer <div>
  //div/preceding-sibling::div[1]

Trae el <div> siguiente a "promotions_left"
  //div[@id="promotions_left"]/following-sibling::div

Trae el primer <div> que este despues de "promotions_left"
  //div[@id="promotions_left"]/following-sibling::div[1]

Trae todos los <div> que tengan un padre de tipo <article>
  //div[ancestor::article]

  Trae y filtra todos los tags de tipo <article> que tengan una clase de tipo "star-rating One" es decir calificaciòn de una estrella.
    //article[p[@class="star-rating One"]]

Trae y filtra todos los tags de tipo <article> que tengan una clase de tipo "star-rating One" que sean <h3> que esten en un <a> y trae su Titulo en texto
    //article[p[@class="star-rating One"]]//h3/a/@title

Conecta dos filtros de busqueda basados en dos clases y tags diferentes y los une en un solo resultado

  //article[p[@class="star-rating One"]]//h3/a/@title | //article[p[@class="star-rating One"]]//p[@class="price_color"]/text()