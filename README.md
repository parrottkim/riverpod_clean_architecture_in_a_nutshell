# Riverpod Clean Architecture in a Nutshell

Flutter project for a sample app implementing key requirements suitable for production services.

|                                             <div style="width:290px">Login, Home and Product Screen</div>                                             |                                                  <div style="width:290px">Product Search Page</div>                                                   |
|:-----------------------------------------------------------------------------------------------------------------------------------------------------:|:-----------------------------------------------------------------------------------------------------------------------------------------------------:|
| ![RPReplay_Final1704447051 2](https://github.com/parrottkim/flutter_riverpod_clean_architecture/assets/83802425/b838750a-c672-40f7-8d18-15ed6d47cc57) | ![RPReplay_Final1704447051 3](https://github.com/parrottkim/flutter_riverpod_clean_architecture/assets/83802425/c5140bfa-4e6d-4ef7-9eae-8e0d32f13629) |



## Requirement
- Clean Architecture
- HTTP Communication
- Global Exception Handling
- Localization
- Dark Mode
- Routing

### Reinterpreted Clean Architecture
**Bite off more than you can chew**

If the backend provides well-refined domain logic, you shouldn't have to implement all elements of Clean Architecture. 
You could achieve a more simplified structure by combining the Domain layer and Data Layer.

For example, defining the Repository to have only an interface class 
and defining the Data Source to act as an implementation class for the Repository.

Additionally, the Usecase doesn't have to be implemented unless it's necessary.
If the business logic is not extensive, it can be appropriately distributed among the Repository implementers and controllers.

The simplified folder structure is as follows.

```
/lib
├── /src
│   ├── /data
│   │   ├── /model
│   │   ├── /repository
│   │   ├── /service
│   │   └── /source
│   ├── /presentation
│   │   ├── /common
│   │   ├── /controller
│   │   ├── /layout
│   │   └── /screen
│   ├── /router
│   ├── /shared
│   └── app.dart
└── main.dart
```

**1. Data**
- **Model** (lib/src/data/model): It is used to structure data obtained from external sources. Contains extension methods for converting data into a model.
- **Repository Abstraction** (lib/src/data/repository): A repository abstraction part.
- **Network Abstraction** (lib/src/data/service): A network abstraction part using Retrofit. It helps with type conversion with REST API.
- **Data Source and Repository Implementation** (lib/src/data/source): It is responsible for fetching data from an external source, in this example a REST API.

**2. Presentation**
- **Common Widgets** (lib/src/presentation/common): Define Widgets that are commonly used.
- **Controller** (lib/src/presentation/controller): It manages the state of the application and processes data from the Data Source to display it in the UI.
- **Layout Widget** (lib/src/presentation/layout): Define a widget, such as a Dashboard, that encompasses the entire app.
- **Screen** (lib/src/presentation/screen): This is the part that is actually displayed on the user's screen. It handles application state or user interaction.

### TODO
- [ ] Test Code