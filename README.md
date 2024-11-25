# TEKURT INDUSTRY AND AUTOMOTIVE LTD. WEBSITE PROJECT

![tekurt Logo](https://github.com/NazimCimen/NazimCimen/blob/main/kartex.png)

This project was developed to showcase the business activities of **Tekurt Industry And Automotive Ltd.**, a company focused on vehicle repair and maintenance, construction machinery repair, and fuel-saving devices.The website is designed to provide information about the company's vehicle and machinery repair services, fuel saving activities and the company.

A special thank you to **Tekurt Industry And Automotive Ltd.** for allowing me to share the source code of this project as open source.

## Live Website

You can view the official website at [www.tekurt.com.tr](https://www.tekurt.com.tr).


## Features
- **Contact Form**: Visitors can use the contact form to get in touch with the company, built with **EmailJS** for direct email communication.
- **Google Maps Integration**: The company's location is embedded in the website using Google Maps, making it easy to find.
- **Responsive Design**: The website is designed to be fully responsive, ensuring a seamless user experience across all devices (mobile, tablet, desktop).
- **SEO Optimization**: The website is optimized for search engines to improve visibility and attract more visitors.

## Technologies Used
- **Flutter**: Used for the website's frontend.
- **EmailJS**: Integrated for sending emails through the contact form.
- **Google Maps API**: Embedded to show the company’s physical location.
- **Multi-language support**: easy_localization package was used to implement multi-language support for English and Turkish.

## Packages Used
- **flutter_svg**: Renders SVG (Scalable Vector Graphics) files
- **google_fonts**: Allows the use of fonts from Google Fonts
- **animate_do**: Used to add animation effects.
- **google_maps_flutter**:  Used to show adress on map.
- **http**: Used for http requests.
- **flutter_dotenv**:Used for loading environment variables from a .env file
- **very_good_analysis**:Linter rules for code quality and consistency
- **easy_localization**: Enables multi-language support for the website.
- **equatable**: Used for value equality comparison in objects.
- **provider**: State management solution.
- **url_launcher**: Used to launch URLs.
- **carousel_slider**: Used to create image carousels on the website.


# Shared Page Structure and Project Architecture: Base Layout and Layers
```plaintext
lib/
├── config/                 # Configuration files and utilities for application setup.
│   ├── localization/       # Handles localization and language-related resources.
│   ├── routes/             # Defines navigation routes for the app.
│   ├── theme/              # Manages application themes and styles.
├── core/                   # Core layer providing foundational utilities and shared functionality.
│   ├── base/               # Base classes for reusable widget structures and logic.
│   ├── size/               # Utilities for responsive sizing and screen dimensions.
│   ├── error/              # Error handling and custom exception definitions.
│   ├── init/               # App initialization, including dependency injection and startup configurations.
│   ├── utils/              # Miscellaneous utilities used across the application.
├── feature/                # Feature modules for individual parts of the application.
│   ├── base_ui/            # Shared UI components and layouts for main pages.
│   ├── home/               # Implementation of the Home page.
│   ├── our_services/       # Implementation of the Our Services page.
│   ├── about_us/           # Implementation of the About Us page.
│   ├── contact_us/         # Implementation of the Contact Us page.
│   ├── language_selector/  # UI and logic for switching languages.
│   ├── footer/             # Footer component shared across pages.
│   ├── header/             # Header component with navigation and branding.
├── product/                # Product-specific utilities and shared resources.
│   ├── components/         # Small, reusable UI components.
│   ├── constants/          # Application-wide constant values.
│   ├── decorations/        # Styling definitions like borders and shadows.
│   ├── model/              # Data models representing application entities.
│   ├── repository/         # Data repository layer for managing API or local storage access.
│   ├── service/            # Service layer for handling API requests or business logic.
│   ├── widgets/            # Shared, higher-level widgets used across features.
├── responsive/             # Utilities and components for responsive design.
└── main.dart               # Application entry point and initial setup.
```

## Overview

This project leverages a unified structure for key pages such as **HomeView**, **OurServices**, **AboutUs**, **CarRepair**,**ReapirMachinery**,**FuelSaving** and **ContactUs**. These pages share consistent design elements and behaviors, including:

- **A Header and Footer** for navigation and branding.
- **A Body section** for unique page content.
- **Consistent scroll-based navigation** for smooth section transitions.
- **A Floating Action Button (FAB)** that appears conditionally based on scroll position, enabling quick navigation back to the top.

To maintain uniformity and adhere to the **DRY (Don't Repeat Yourself)** principle, a **Base Layout Architecture** was implemented. This architecture minimizes redundancy by centralizing shared logic and components, ensuring maintainability and scalability.

---

## Architecture Components

### 1. BaseStateless
- A reusable base class for stateless widgets.
- Provides utility methods for accessing themes, text styles, and screen dimensions.

### 2. BaseStateful
- A reusable base class for stateful widgets.
- Adds common state management utilities, including optional ViewModel integration.

### 3. BaseLayout
- Serves as the foundation for main pages like
  -  `HomeView`
  -  `ContactView`
  -  `OurServicesView`
  -  `AboutUsView`
  -  `CarRepairView`
  -  `RepairMachineryView`
  -  `FuelSavingView`
- Integrates a **Header**, **Footer**, **Body**, and **FAB logic**.
- Manages the scaffold structure and ties together UI and scroll behaviors.

### 4. BaseMixin
- Adds reusable behaviors, such as:
  - Scroll listener management.
  - Section navigation logic.
  - Header transparency toggling based on scroll position.

---

## Hierarchical Integration of Base Architecture
The main pages derive from BaseLayout, which in turn derives from BaseStateful. This layered approach provides these pages with both a standardized layout (Header, Footer, Body, FAB) and access to essential utilities such as scroll management and optional Provider integration.

Meanwhile, non-main pages or standalone widgets directly inherit from either BaseStateless or BaseStateful, allowing them to utilize shared functionality without the additional structure of BaseLayout.

This design ensures a clear separation of concerns, simplifies code reusability, and provides flexibility for creating pages with varying complexity levels while maintaining uniformity across the application.
```plaintext
+------------------------------------------------------+
|                    HomeView                          | <-- Main Page Widget
+------------------------------------------------------+
                        ▲
                        | Inherits
                        v
+------------------------------------------------------+
|              _HomeViewState                         | <-- State Class for HomeView
| Extends: BaseLayout<HomeView>                       | 
| Mixin: HomeViewMixin                                | <-- Adds page-specific behaviors
+------------------------------------------------------+
                        ▲
                        | Extends
                        v
+------------------------------------------------------+
|              BaseLayout<T extends StatefulWidget>   | <-- Provides page templates: Header, Footer, FAB, Body
| Extends: BaseStateful                               | 
| Mixin: BaseScrollMixin                              | <-- Adds scroll-based behaviors
+------------------------------------------------------+
                        ▲
                        | Extends
                        v
+------------------------------------------------------+
|        BaseStateful<T extends StatefulWidget, VM>   | <-- Manages State, Optional ViewModel Integration
|                  Base for Stateful Widgets          |
+------------------------------------------------------+
```
## Final Words
Thank you for visiting this repository!
Your interest and support mean a lot. If you have any feedback, questions, or suggestions, feel free to reach out😊


