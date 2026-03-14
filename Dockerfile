FROM node:20-alpine
RUN npm install -g supergateway
ENV PORT=3000
EXPOSE 3000
CMD ["sh", "-c", "supergateway --stdio 'npx -y coda-mcp@latest' --port 3000 --baseUrl https://coda-mcp-sse-production.up.railway.app"]
