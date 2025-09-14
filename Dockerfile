# استخدم صورة Node.js رسمية كقاعدة
FROM node:18-alpine

# قم بإنشاء مجلد التطبيق
WORKDIR /app

# انسخ ملفات package.json و package-lock.json لتثبيت المكتبات
COPY package*.json ./

# قم بتثبيت المكتبات
RUN npm install

# انسخ باقي ملفات التطبيق
COPY . .

# قم بتشغيل الخادم على المنفذ 3000
EXPOSE 3000

# أمر تشغيل التطبيق
CMD ["node", "server.js"]