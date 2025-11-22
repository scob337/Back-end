# استخدم نسخة خفيفة من Node
FROM node:18-alpine

# مجلد العمل داخل الكونتينر
WORKDIR /app

# نسخ package.json و package-lock.json
COPY package*.json ./

# تثبيت المكتبات
RUN npm install

# نسخ بقية ملفات المشروع
COPY . .

# تعريف البورت اللي السيرفر يسمع عليه
EXPOSE 3000

# الأمر اللي يشغّل السيرفر
CMD ["node", "server.js"]
