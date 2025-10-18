# 🎬 Movies App

A Flutter mobile app built with **Clean Architecture (DDD)** that consumes The Movie DB API to display popular and now playing movies.

---

## 🧱 Description

This project was developed as part of a technical challenge.  
It implements **Domain-Driven Design (DDD)** principles, **Bloc state management**, and **data caching** for offline access.  

The app integrates with **The Movie DB API**, featuring multi-theme support (dark/light), persistent favorites, and pagination.  
Built completely from scratch, including a custom boilerplate and updated dependencies.

---

## 🧩 Features

### ✅ Core Features
- List popular and now-playing movies
- Switch between list and grid views
- Movie details:
  - Name, Poster, Genres, Overview, Popularity
  - Release date, Languages, Vote average, Status
- Save and persist favorite movies locally
- Infinite scroll with pagination
- Error handling and user feedback

### 🌟 Bonus Features
- Light and Dark themes (auto-switch with system theme)
- Cached data for Popular and Now Playing tabs
- Favorites tab available offline

---

## 🧠 Architecture

### Clean Architecture (DDD)

The project follows a feature-first folder structure with clear separation of layers:

```
lib/
  core/
    errors/
    usecases/
    theme/
  features/
    movies/
      data/
        datasources/
        models/
        repositories_impl/
      domain/
        entities/
        repositories/
        usecases/
      presentation/
        blocs/
        pages/
        widgets/
```

- **Data layer:** Handles API integration and persistence  
- **Domain layer:** Contains business logic and entities  
- **Presentation layer:** UI, blocs, and state management  

---

## 🧰 Tech Stack

- Flutter 3.x  
- Bloc  
- Freezed  
- GetIt (dependency injection)  
- Dartz  
- SharedPreferences  
- http  
- Equatable  

---

## 🚀 Getting Started

```bash
flutter pub get
# Create the environment file
cp .env.example .env.dev
# Add your TMDB credentials
APIKEY=yourapikey
BASE_URL=https://api.themoviedb.org/3/
IMAGES_URL=http://image.tmdb.org/t/p/w500

# Run
flutter run -d <your_device_id>
```

---

## 🖼️ Screenshots

![Design](https://gcdnb.pbrd.co/images/7Cg2hJnUOaB5.png?o=1)
![Architecture](https://gcdnb.pbrd.co/images/kaW4Q3whObfw.png)
![Final Result](https://gcdnb.pbrd.co/images/9VEfKE3BBHCQ.png)

---

## 🧑‍💻 Author

**Luis Aguilar Rojas**  
Full Stack Engineer (Mobile Focused)  
[LinkedIn](https://linkedin.com/in/luis-angel-developer) • [GitHub](https://github.com/ElMopendor)

---

### 🏷️ Topics
```
flutter clean-architecture ddd bloc themoviedb-api movies-app
```
