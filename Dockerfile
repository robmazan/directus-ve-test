FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci --omit=dev && npm cache clean --force

COPY . .

ENV NODE_ENV=production
ENV PORT=4444

USER node

EXPOSE 4444

CMD ["npm", "start"]
