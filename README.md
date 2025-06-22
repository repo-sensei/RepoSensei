# RepoSensei - AI-Powered Repository Analysis 🚀

A complete AI-powered repository analysis tool with secure Docker containerization, local MongoDB, and cloud Supabase integration.

## 🏆 Hackathon Features

- **🔐 Enterprise-Grade Security** - Docker secrets with runtime injection
- **🐳 Full Containerization** - No global dependencies required
- **🤖 AI-Powered Analysis** - Code review, architecture mapping, technical debt detection
- **📊 Real-time Insights** - Live repository analysis and visualization
- **👥 Team Collaboration** - Shared database with individual access tokens

## 🎯 Quick Start (5 minutes)

### Prerequisites
- Docker Desktop
- Git

### Setup
```bash
# 1. Clone the repository
git clone https://github.com/repo-sensei/infra.git
cd infra

# 2. Setup secrets (interactive)
chmod +x setup-secrets.sh
./setup-secrets.sh

# 3. Launch everything
docker-compose up --build
```

### Access Your Application
- 🌐 **Frontend**: http://localhost:5173
- 🔧 **Backend API**: http://localhost:3000
- 🐍 **Python Backend**: http://localhost:5005
- 🗄️ **MongoDB**: localhost:27017

## 🏗️ Architecture

```
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│   Frontend      │    │   Backend       │    │  Python Backend │
│   (React/Vite)  │◄──►│   (Node.js)     │◄──►│   (FastAPI)     │
│   Port: 5173    │    │   Port: 3000    │    │   Port: 5005    │
└─────────────────┘    └─────────────────┘    └─────────────────┘
                                │
                                ▼
                       ┌─────────────────┐
                       │   MongoDB       │
                       │   (Local)       │
                       │   Port: 27017   │
                       └─────────────────┘
                                │
                                ▼
                       ┌─────────────────┐
                       │   Supabase      │
                       │   (Shared)      │
                       │   (Cloud)       │
                       └─────────────────┘
```

## 🔐 Security Implementation

### **Docker Secrets Architecture**
- **Runtime Injection** - No secrets baked into Docker images
- **Frontend Placeholders** - Built JS contains only placeholders, replaced at runtime
- **Restricted Permissions** - Secret files with 600 permissions
- **Complete Separation** - Build-time (public) vs Runtime (private)

### **Secret Management**
```
secrets/
├── supabase_url.txt              # Supabase project URL
├── supabase_anon_key.txt         # Frontend access key
├── supabase_service_role_key.txt # Backend admin key
└── github_token.txt              # GitHub personal token
```

## 📊 Features

### **Repository Analysis**
- 🔍 **AI-Powered Code Review** - Automated code quality assessment
- 📊 **Architecture Graph** - Visual dependency mapping
- 🎯 **Hotspot Detection** - Technical debt identification
- 📈 **Commit History** - Code evolution tracking
- 🏗️ **Complexity Analysis** - Cyclomatic complexity metrics

### **AI Features**
- 🤖 **Code Summarization** - Understand complex codebases
- 🔧 **Refactoring Suggestions** - AI-powered improvements
- 📝 **Documentation Generation** - Auto-generate technical docs
- 🎨 **Personal Branding** - Create developer portfolio
- 🧠 **Smart Recommendations** - Context-aware suggestions

## 🐳 Docker Services

| Service | Technology | Port | Purpose |
|---------|------------|------|---------|
| Frontend | React/Vite + Nginx | 5173 | User interface |
| Backend | Node.js/Express | 3000 | API server |
| Python Backend | FastAPI | 5005 | AI/ML services |
| MongoDB | MongoDB 7.0 | 27017 | Local database |

## 🔑 Required API Keys

### **Supabase Keys (Get from Team Lead)**
- **Project URL** - Your Supabase project URL
- **Anon Key** - Frontend access key
- **Service Role Key** - Backend admin key

### **GitHub Token (Create Your Own)**
1. Go to https://github.com/settings/tokens
2. Click "Generate new token (classic)"
3. Select scopes: `repo`, `read:user`, `user:email`

## 🛠️ Development Commands

```bash
# View logs
docker-compose logs

# Restart services
docker-compose restart

# Stop everything
docker-compose down

# Rebuild after changes
docker-compose up --build

# Access MongoDB
docker exec -it reposensei-mongodb mongosh
```

## 🚨 Security Notes

### **For Team Lead**
- **Distribute Supabase keys securely** - DM, email, password manager
- **Monitor Supabase usage** - All users share your database
- **Set up rate limiting** - Prevent abuse of your keys

### **For Developers**
- **Create own GitHub token** - Don't use someone else's
- **Keep secret files secure** - Don't commit to git
- **Contact team lead for Supabase keys** - Don't create your own

## 🏆 Why This Setup is Perfect for Hackathons

### **✅ Professional Grade**
- **Enterprise security** - Docker secrets with runtime injection
- **Production-ready** - Scalable microservices architecture
- **Clean code** - Minimal, maintainable Docker setup

### **✅ Developer Friendly**
- **5-minute setup** - No complex configuration
- **No global installs** - Everything containerized
- **Cross-platform** - Works on Windows, Mac, Linux

### **✅ Team Collaboration**
- **Shared database** - Real-time collaboration
- **Individual tokens** - Personal GitHub access
- **Secure sharing** - No exposed credentials

### **✅ Judging Ready**
- **Complete documentation** - Professional README
- **Clean repository** - No sensitive files committed
- **Working demo** - Ready to present immediately

## 📞 Support

### **For Users**
1. Check logs: `docker-compose logs`
2. Verify secrets: `ls -la secrets/`
3. Contact team lead for Supabase keys
4. Create own GitHub token

### **For Team Lead**
- Monitor Supabase dashboard
- Provide keys via secure channels
- Support team during hackathon

---

**Built with ❤️ for hackathon success! 🚀** 