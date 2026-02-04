# My Listmonk CRM Project

This is a customized version of [listmonk](https://listmonk.app) - a powerful, self-hosted newsletter and mailing list manager.

## 🚀 Features

- **Newsletter Management**: Create and manage email newsletters
- **Mailing Lists**: Organize subscribers into different lists
- **Campaign Management**: Schedule and track email campaigns
- **Analytics**: Detailed reports on campaign performance
- **Template System**: Customizable email templates
- **Subscriber Management**: Import, export, and manage subscribers
- **Self-Hosted**: Complete control over your data

## 🛠️ Tech Stack

- **Backend**: Go (Golang)
- **Frontend**: Vue.js with Buefy UI
- **Database**: PostgreSQL
- **Containerization**: Docker & Docker Compose

## 📋 Prerequisites

- Docker Desktop
- Git

## 🚀 Quick Start

1. **Clone this repository:**
   ```bash
   git clone https://github.com/YOUR_USERNAME/listmonk-crm.git
   cd listmonk-crm
   ```

2. **Start the application:**
   ```bash
   docker compose up -d
   ```

3. **Access the application:**
   - Open your browser and go to `http://localhost:9000`
   - Create your admin account on first visit

## 📁 Project Structure

```
├── cmd/                 # Go application entry points
├── internal/            # Internal Go packages
├── frontend/            # Vue.js frontend application
├── static/              # Static assets and templates
├── queries/             # SQL queries
├── docker-compose.yml  # Docker configuration
├── config.toml.sample   # Sample configuration file
└── schema.sql          # Database schema
```

## ⚙️ Configuration

The application uses environment variables for configuration. Key settings:

- **Database**: PostgreSQL (configured in docker-compose.yml)
- **App Port**: 9000
- **Admin Setup**: Created on first visit

## 🐳 Docker Services

- **listmonk_app**: Main application (port 9000)
- **listmonk_db**: PostgreSQL database

## 📚 Documentation

For detailed documentation, visit the official [listmonk documentation](https://listmonk.app/docs/).

## 🤝 Contributing

This is a customized version. For contributions to the original project, please visit the [listmonk GitHub repository](https://github.com/knadh/listmonk).

## 📄 License

This project is licensed under AGPL v3, same as the original listmonk project.

---

**Note**: This is a fork/customized version of listmonk. For the official version, visit [listmonk.app](https://listmonk.app).
