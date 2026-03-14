FROM node:20-alpine
RUN npm install -g supergateway coda-mcp
ENV PORT=3000
ENV API_KEY=""
EXPOSE 3000
CMD ["supergateway", "--stdio", "coda-mcp", "--port", "3000", "--baseUrl", "https://coda-mcp-sse-production.up.railway.app"]
