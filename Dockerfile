FROM node:20-alpine
RUN npm install -g supergateway coda-mcp
ENV PORT=3000
EXPOSE 3000
CMD ["sh", "-c", "supergateway --stdio \"API_KEY=$API_KEY coda-mcp\" --port 3000 --baseUrl https://coda-mcp-sse-production.up.railway.app"]
