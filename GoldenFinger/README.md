# Golden Finger E-Commerce Platform

<!-- PROJECT SHIELDS -->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/GoldenFinger">
    <img src="web/assets/img/favicon/favicon.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Golden Finger</h3>

  <p align="center">
    A comprehensive e-commerce platform built with Jakarta EE
    <br />
    <a href="https://github.com/Golden-Finger"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/GoldenFinger">View Demo</a>
    ·
    <a href="https://github.com/GoldenFinger/issues">Report Bug</a>
    ·
    <a href="https://github.com/GoldenFinger/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#features">Features</a></li>
    <li><a href="#project-structure">Project Structure</a></li>
    <li><a href="#user-roles">User Roles</a></li>
    <li><a href="#security-features">Security Features</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->

## About The Project

Golden Finger is a comprehensive e-commerce platform developed with Jakarta EE for my PRJ301 course at FPT University. The platform provides a seamless shopping experience for customers and a powerful management system for administrators.

Key highlights:

- Intuitive shopping interface with product filtering and search functionality
- Secure checkout process with multiple payment options including VNPay
- Feature-rich admin dashboard with sales analytics and user management
- Responsive design optimized for both desktop and mobile devices
- Secure authentication and role-based access control

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

- [![Java][Java.com]][Java-url]
- [![Jakarta EE][JakartaEE.com]][JakartaEE-url]
- [![SQL Server][SQLServer.com]][SQLServer-url]
- [![Bootstrap][Bootstrap.com]][Bootstrap-url]
- [![jQuery][jQuery.com]][jQuery-url]
- [![ApexCharts][ApexCharts.com]][ApexCharts-url]
- [![VNPay][VNPay.com]][VNPay-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## Getting Started

Follow these steps to set up and run the Golden Finger e-commerce platform locally.

### Prerequisites

- JDK 11 or higher
- Apache Tomcat 10.0 or higher
- SQL Server database
- NetBeans IDE (recommended)

### Installation

1. Clone the repository
2. Create a new database in SQL Server
3. Execute the SQL scripts in the `database/scripts` folder to create tables and initial data
4. Open the project in NetBeans IDE
5. Update the database connection settings in `src/java/utils/DBConnect.java`
6. Configure VNPay payment settings in `src/java/utils/Config.java` (if using)
7. Build and run the project
8. Access the application at `http://localhost:8080/GoldenFinger`

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FEATURES -->

## Features

### Customer Features

- **Product Browsing**: Browse products with filtering and search functionality
- **Shopping Cart**: Add, remove, and update products in cart
- **User Authentication**: Register, login, and manage account information
- **Order Management**: View order history and track current orders
- **Secure Checkout**: Multiple payment options including Cash on Delivery and VNPay
- **Responsive Design**: Optimized for both desktop and mobile devices

### Admin Features

- **Dashboard**: Overview of sales, customers, and revenue with interactive charts
- **Product Management**: Add, edit, and delete products
- **Order Management**: Process orders, update status, and manage shipping
- **User Management**: Manage user accounts and permissions
- **Analytics**: Track sales performance, top products, and customer behavior

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- PROJECT STRUCTURE -->

## Project Structure

```
GoldenFinger/
├── src/
│   ├── java/
│   │   ├── controller/      # Servlet controllers
│   │   │   ├── admin/       # Admin controllers
│   │   │   └── ...
│   │   ├── dal/             # Data Access Layer
│   │   ├── filter/          # Request filters
│   │   ├── model/           # Entity classes
│   │   └── utils/           # Utility classes
│   └── resources/           # Configuration files
├── web/
│   ├── dashboard/           # Admin dashboard pages
│   ├── WEB-INF/             # Configuration files
│   ├── assets/              # Static assets (CSS, JS, images)
│   └── *.jsp                # JSP pages
└── build/                   # Compiled output
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USER ROLES -->

## User Roles

1. **Customer** (RoleID = 1)

   - Browse products
   - Place orders
   - View order history
   - Manage personal profile

2. **Admin** (RoleID = 2)
   - Access admin dashboard
   - Manage products, orders, and users
   - View analytics and reports

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SECURITY FEATURES -->

## Security Features

- **Filter-based Authentication**: Secures admin pages and user-specific operations
- **Role-based Access Control**: Different permissions for different user roles
- **Session Management**: Secure handling of user sessions
- **Input Validation**: Protection against common web vulnerabilities
- **Secure Payment Processing**: Integration with VNPay for secure transactions

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->

## Contact

Project Link: [https://github.com/GoldenFinger](https://github.com/GoldenFinger)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->

## Acknowledgments

- [FPT University](https://daihoc.fpt.edu.vn/)
- [Jakarta EE Documentation](https://jakarta.ee/specifications/platform/9/)
- [Bootstrap Templates](https://getbootstrap.com/docs/5.0/examples/)
- [ApexCharts.js](https://apexcharts.com/)
- [VNPay Payment Gateway](https://vnpay.vn/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/GoldenFinger/GoldenFinger.svg?style=for-the-badge
[contributors-url]: https://github.com/Golden-Finger/Golden-Finger/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/GoldenFinger/GoldenFinger.svg?style=for-the-badge
[forks-url]: https://github.com/GoldenFinger/GoldenFinger/network/members
[stars-shield]: https://img.shields.io/github/stars/GoldenFinger/GoldenFinger.svg?style=for-the-badge
[stars-url]: https://github.com/GoldenFinger/GoldenFinger/stargazers
[issues-shield]: https://img.shields.io/github/issues/GoldenFinger/GoldenFinger.svg?style=for-the-badge
[issues-url]: https://github.com/NhatNhuDinh/Golden-Finger/issues
[license-shield]: https://img.shields.io/github/license/GoldenFinger/GoldenFinger.svg?style=for-the-badge
[license-url]: https://github.com/GoldenFinger/GoldenFinger/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/your-linkedin
[product-screenshot]: web/assets/img/screenshot.png
[Java.com]: https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=java&logoColor=white
[Java-url]: https://www.oracle.com/java/
[JakartaEE.com]: https://img.shields.io/badge/Jakarta_EE-4A4A55?style=for-the-badge&logo=jakarta-ee&logoColor=white
[JakartaEE-url]: https://jakarta.ee/
[SQLServer.com]: https://img.shields.io/badge/SQL_Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white
[SQLServer-url]: https://www.microsoft.com/en-us/sql-server
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[jQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[jQuery-url]: https://jquery.com
[ApexCharts.com]: https://img.shields.io/badge/ApexCharts-35495E?style=for-the-badge&logo=chart-dot-js&logoColor=4FC08D
[ApexCharts-url]: https://apexcharts.com/
[VNPay.com]: https://img.shields.io/badge/VNPay-1A73E8?style=for-the-badge&logo=paypal&logoColor=white
[VNPay-url]: https://vnpay.vn/
