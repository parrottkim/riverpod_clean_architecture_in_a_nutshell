# Riverpod Clean Architecture in a Nutshell

Flutter project for a sample app implementing key requirements suitable for production services.

|                                                            Login, Home and Product Screen                                                             |                                                                  Product Search Page                                                                  |
|:-----------------------------------------------------------------------------------------------------------------------------------------------------:|:-----------------------------------------------------------------------------------------------------------------------------------------------------:|
| <img src="https://github.com/parrottkim/riverpod_clean_architecture_in_a_nutshell/assets/83802425/b849427f-0fe7-4a7a-8e7b-abcd86999a37" width="300"/> | <img src="https://github.com/parrottkim/riverpod_clean_architecture_in_a_nutshell/assets/83802425/76931b31-e3dc-418b-80df-8a059992137e" width="300"/> |



## Requirement
- Clean Architecture
- HTTP Communication
- Global Exception Handling
- Localization
- Dark Mode
- Routing

## Reinterpreted Clean Architecture
### Do not bite off more than you can chew

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
- **handles External Communicationss** (lib/src/data/service): It typically handles interactions with external systems, communication with external APIs, and connections to data sources.
- **Data Source and Repository Implementation** (lib/src/data/source): It is responsible for fetching data from an external source, in this example a external APIs.

**2. Presentation**
- **Common Widgets** (lib/src/presentation/common): Define Widgets that are commonly used.
- **Controller** (lib/src/presentation/controller): It manages the state of the application and processes data from the Data Source to display it in the UI.
- **Layout Widget** (lib/src/presentation/layout): Define a widget, such as a Dashboard, that encompasses the entire app.
- **Screen** (lib/src/presentation/screen): This is the part that is actually displayed on the user's screen. It handles application state or user interaction.

### TODO
- [ ] Test Code
