# Sistema de Apoio ao Cliente

Um sistema completo de suporte ao cliente com integração WhatsApp, monitoramento em tempo real e notificações por email.

## 🚀 Funcionalidades

- **Integração WhatsApp**: Conexão com WhatsApp Business API
- **Chat em Tempo Real**: Comunicação instantânea com clientes
- **Monitoramento**: Dashboard com estatísticas e métricas
- **Notificações**: Sistema de alertas por email 24/7
- **Interface Profissional**: Design humanizado

## 🛠️ Stack Tecnológica

### Backend
- **Node.js** com Express.js
- **SQLite** para banco de dados
- **Socket.IO** para comunicação em tempo real
- **JWT** para autenticação
- **Nodemailer** para notificações
- **WhatsApp Business API**

### Frontend
- **React.js** com TypeScript
- **Tailwind CSS** para estilização
- **React Router** para navegação
- **React Query** para gerenciamento de estado
- **Socket.IO Client** para tempo real
- **Lucide React** para ícones

## 📋 Pré-requisitos

- Node.js (versão 16 ou superior)
- npm ou yarn
- Conta no WhatsApp Business API
- Servidor SMTP para emails

## 🚀 Instalação e Execução

### Opção 1: Script Automatizado (Recomendado)

Execute o arquivo `setup.bat` que irá instalar todas as dependências automaticamente:

```bash
setup.bat
```

### Opção 2: Instalação Manual

1. **Instalar dependências do projeto:**
```bash
npm run install-all
```

2. **Configurar variáveis de ambiente:**
Crie um arquivo `.env` na raiz do projeto com:

```env
# Servidor
PORT=3001
NODE_ENV=development

# Banco de dados
DB_PATH=./database/support.db

# JWT
JWT_SECRET=sua_chave_secreta_jwt_aqui
JWT_EXPIRES_IN=24h

# WhatsApp Business API
WHATSAPP_API_URL=https://graph.facebook.com/v17.0
WHATSAPP_PHONE_NUMBER_ID=seu_phone_number_id
WHATSAPP_ACCESS_TOKEN=seu_access_token
WHATSAPP_VERIFY_TOKEN=seu_verify_token

# Email (Gmail exemplo)
EMAIL_HOST=smtp.gmail.com
EMAIL_PORT=587
EMAIL_USER=seu_email@gmail.com
EMAIL_PASS=sua_senha_de_app
EMAIL_FROM=seu_email@gmail.com

# Frontend
REACT_APP_API_URL=http://localhost:3001/api
REACT_APP_SOCKET_URL=http://localhost:3001
```

3. **Inicializar banco de dados:**
```bash
cd server && node database/init.js
```

4. **Executar o projeto:**
```bash
npm run dev
```

O sistema estará disponível em:
- **Frontend**: http://localhost:3000
- **Backend**: http://localhost:3001

## 👥 Credenciais de Demonstração

Após a inicialização do banco, você pode fazer login com:

### Administrador
- **Email**: admin@empresa.com
- **Senha**: admin123

### Agente
- **Email**: agente@empresa.com
- **Senha**: agente123

### Supervisor
- **Email**: supervisor@empresa.com
- **Senha**: supervisor123

## 📁 Estrutura do Projeto

```
customer-support-system/
├── server/                 # Backend Node.js
│   ├── routes/            # Rotas da API
│   ├── database/          # Scripts de banco de dados
│   ├── middleware/        # Middlewares
│   └── index.js          # Servidor principal
├── client/                # Frontend React
│   ├── src/
│   │   ├── components/    # Componentes reutilizáveis
│   │   ├── pages/        # Páginas da aplicação
│   │   ├── services/     # Serviços de API
│   │   ├── contexts/     # Contextos React
│   │   ├── types/        # Definições TypeScript
│   │   └── utils/        # Utilitários
│   └── public/           # Arquivos públicos
├── package.json          # Configuração principal
├── setup.bat            # Script de instalação
└── README.md            # Documentação
```

## 🔧 Configuração WhatsApp

1. Acesse [Facebook Developers](https://developers.facebook.com/)
2. Crie um app e configure o WhatsApp Business API
3. Obtenha o `Phone Number ID` e `Access Token`
4. Configure o webhook URL: `https://seu-dominio.com/api/whatsapp/webhook`

## 📧 Configuração Email

Para Gmail:
1. Ative a verificação em duas etapas
2. Gere uma senha de app
3. Use essa senha no campo `EMAIL_PASS`

## 🎯 Funcionalidades Implementadas

### ✅ Backend
- [x] Servidor Express com Socket.IO
- [x] Autenticação JWT
- [x] Rotas de API completas
- [x] Integração WhatsApp
- [x] Sistema de notificações
- [x] Banco de dados SQLite
- [x] Webhooks para WhatsApp

### ✅ Frontend
- [x] Interface de login
- [x] Dashboard com estatísticas
- [x] Lista de conversas
- [x] Chat em tempo real
- [x] Configurações de perfil
- [x] Sistema de notificações
- [x] Design responsivo

### ✅ Recursos Avançados
- [x] Monitoramento em tempo real
- [x] Filtros e busca
- [x] Upload de arquivos
- [x] Indicadores de digitação
- [x] Gráficos e métricas
- [x] Sistema de prioridades

## 🔒 Segurança

- Autenticação JWT
- Senhas criptografadas com bcrypt
- Validação de entrada
- CORS configurado
- Rate limiting (a implementar)

## 📊 Monitoramento

- Dashboard com métricas em tempo real
- Logs de atividade
- Status do sistema
- Performance de agentes
- Análise de conversas

## 🚀 Deploy

### Desenvolvimento
```bash
npm run dev
```

### Produção
```bash
npm run build
npm start
```

## 🤝 Contribuição

1. Faça um fork do projeto
2. Crie uma branch para sua feature
3. Commit suas mudanças
4. Push para a branch
5. Abra um Pull Request

## 📝 Licença

Este projeto está sob a licença MIT.

## 🆘 Suporte

Para dúvidas ou problemas:
- Abra uma issue no repositório
- Consulte a documentação da API
- Verifique os logs do servidor

---


**Desenvolvido com ❤️ para portfólio de desenvolvedor júnior** 
