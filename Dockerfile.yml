FROM nginx:stable-alpine

# Remove site padrão do nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia os arquivos gerados pelo Flutter Web para o nginx
COPY build/web /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]