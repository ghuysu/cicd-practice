# Sử dụng Node.js LTS version trên Alpine Linux để image nhẹ hơn
FROM node:20-alpine

# Thiết lập working directory trong container
WORKDIR /app

# Copy package.json và package-lock.json (nếu có)
COPY package*.json ./

# Cài đặt dependencies
RUN npm install --production

# Copy toàn bộ source code
COPY . .

# Expose port 3000
EXPOSE 3000

# Chạy ứng dụng
CMD ["node", "main.js"]
