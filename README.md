<em> # Kueski Movies App </em>

1. Casi siempre se me van las ideas cuando no tengo un diseño para implementar, es por ello que diseñé una idea para poder plasmar los requerimientos del challenge (ahí ando subiendo las imagenes a pasteboard)

![Diseño inicial](https://gcdnb.pbrd.co/images/7Cg2hJnUOaB5.png?o=1)


2. Luego me puse a ver qué arquitectura se podría usar para el desarrollo de la app, me decanté por DDD (Driven Domain Design), siento que tengo ventaja en esta arquitectura, así que la tomé 

![Arquitectura](https://gcdnb.pbrd.co/images/kaW4Q3whObfw.png)


3. Ya luego me puse a hacer un boilerplate para este proyecto, no tenía uno así que lo hice desde cero, de paso actualizé todas las librerías que tenía anteriormente.

4. Empecé con el desarrollo 

```
    Features
    [ x ] As a User I should be able to list the most popular movies.
    [ x ] As a User I should be able to list the now playing movies.
    [ x ] As a User I should see the option to change between a list and a grid view.
    [ x ] As a User I should see the different possible errors (error handling).
    [ x ] As a User I should be able to see for each movie the following details :
        [ x ] Name
        [ x ] Poster
        [ x ] Genres
        [ x ] Overview
        [ x ] Popularity
        [ x ] Release date
        [ x ] Languages
        [ x ] Vote average
        [ x ] Status
    [ x ] As a User I should be able to save my favorite movies and I want to see my
    stored preferences when I open the app again.
    [ x ] As a User I should be able to keep scrolling and new results should appear
    (pagination).
    [ ] [BONUS] As a User I should see a movie sorting feature (by date or name)
```

5. Funcionalidades que agregué como bonus

```
    [ x ] [BONUS] Themes, dark and lingt, funcionan cambiando el tema del disposito
    [ x ] [BONUS] La página de los tabs popular y live se conservan, hice un poco de cacheado de info
    [ x ] [BONUS] El tab de favourites funciona sin internet, la data se almacena en local
    
```

6. Imágenes 


![Trabajo final](https://gcdnb.pbrd.co/images/9VEfKE3BBHCQ.png)


7. Para ejecutar el archivo use la versión más reciente de Flutter y cree un .env.dev con los keys de IMovvieDB

el .env.dev trae estas variables

```
APIKEY=yourapikey
BASE_URL=https://api.themoviedb.org/3/
IMAGES_URL=http://image.tmdb.org/t/p/w500

```
Una vez realizado el paso anterior, ya se puede proceder a ejecutar el código

```
flutter pub run -d <your_device_id>
```

