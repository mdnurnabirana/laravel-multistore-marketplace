# IzyBuy - Multi-Store Market Platform

[![Live Demo](http://izybuy.free.nf/)](http://izybuy.free.nf/) 
![Laravel](https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white)
![Bootstrap](https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)

## 📝 Overview
IzyBuy is a modern, scalable **Multi-Vendor Ecommerce** platform built with Laravel, designed to empower multiple independent vendors to sell their products seamlessly under one unified marketplace.

## 🌐 Live Demo
Experience the platform: [http://izybuy.free.nf/](http://izybuy.free.nf/)

## ✨ Features

### 🏪 Marketplace Core
- 🏷️ Multi-vendor support with individual dashboards
- 📝 Vendor registration and approval system

### 📦 Product Management
- 🛒 Vendor-specific product management
- 📊 Inventory tracking with low stock alerts

### 💰 Order Processing
- 🛍️ Shopping cart & checkout system
- � Discount/coupon management
- 🚚 Vendor-specific shipping options

### 👥 Customer Experience
- ⭐ Product reviews and ratings
- 📱 Responsive, mobile-friendly UI
- 🔒 Secure authentication system

### 👨‍💼 Admin Controls
- 👥 Comprehensive user management
- 📊 Order tracking and analytics
- ⚙️ Site configuration

## 🛠️ Tech Stack

| Component          | Technology | Icon |
|--------------------|------------|------|
| Backend Framework  | Laravel 11 | <img src="https://cdn.worldvectorlogo.com/logos/laravel-2.svg" width="20"> |
| Frontend           | Blade, Bootstrap | <img src="https://cdn.worldvectorlogo.com/logos/bootstrap-5-1.svg" width="20"> |
| Database           | MySQL | <img src="https://cdn.worldvectorlogo.com/logos/mysql-6.svg" width="20"> |
| Shopping Cart      | Gloudemans Shoppingcart | 🛒 |
| Session Management | Laravel Session | 🔐 |

## ⚙️ Installation

```bash
# 📥 Clone repository
git clone https://github.com/your-repo/izybuy.git
cd izybuy

# 📦 Install dependencies
composer install
npm install
npm run dev

# ⚙️ Configure environment
cp .env.example .env
php artisan key:generate

# 🗃️ Setup database
php artisan migrate --seed

# 🚀 Run application
php artisan serve
