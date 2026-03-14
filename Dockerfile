FROM node:20-alpine
RUN npm install -g supergateway coda-mcp
ENV PORT=3000
EXPOSE 3000
CMD ["sh", "-c", "API_KEY=${20edd0f6-c760-4f8b-a196-ecafc239ea1b} supergateway --stdio coda-mcp --port 3000 --baseUrl https://coda-mcp-sse-production.up.railway.app"]
