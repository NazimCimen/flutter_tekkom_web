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
- **Localization**:

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

+--------------------------+
| BaseStateless            |  
| (Stateless UI Katmanı)   |
+--------------------------+
              ↑
+--------------------------+
| BaseStateful             |
| (Stateful UI Katmanı)    |
+--------------------------+
              ↑
+--------------------------+
| BaseLayout               |  
| (Ana Sayfa Şablonu)      |  
+--------------------------+
              ↑
+--------------------------+
| Ana Sayfalar:            |
| - HomeView               |
| - OurServices            |
| - AboutUs                |
| - ContactUs              |
+--------------------------+
